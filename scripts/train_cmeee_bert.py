from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any

import torch
from sklearn.metrics import precision_recall_fscore_support
from torch.utils.data import DataLoader, Dataset
from transformers import AutoModelForTokenClassification, AutoTokenizer

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from cblue_project.config import CMeEE_DEV, CMeEE_TRAIN, ROOT_DIR


def read_json(path: Path) -> list[dict[str, Any]]:
    return json.loads(path.read_text(encoding="utf-8"))


def collect_labels(rows: list[dict[str, Any]]) -> list[str]:
    types = sorted({entity["type"] for row in rows for entity in row.get("entities", [])})
    labels = ["O"]
    for entity_type in types:
        labels.extend([f"B-{entity_type}", f"I-{entity_type}"])
    return labels


def char_labels(row: dict[str, Any], label2id: dict[str, int]) -> list[int]:
    text = row["text"]
    labels = [label2id["O"]] * len(text)
    for entity in row.get("entities", []):
        start = int(entity["start_idx"])
        end = int(entity["end_idx"])
        entity_type = entity["type"]
        if start < 0 or end > len(text) or start >= end:
            continue
        labels[start] = label2id[f"B-{entity_type}"]
        for idx in range(start + 1, end):
            labels[idx] = label2id[f"I-{entity_type}"]
    return labels


class CMeEEDataset(Dataset):
    def __init__(
        self,
        rows: list[dict[str, Any]],
        tokenizer: Any,
        label2id: dict[str, int],
        max_length: int,
    ) -> None:
        self.rows = rows
        self.tokenizer = tokenizer
        self.label2id = label2id
        self.max_length = max_length

    def __len__(self) -> int:
        return len(self.rows)

    def __getitem__(self, index: int) -> dict[str, torch.Tensor]:
        row = self.rows[index]
        text = row["text"]
        encoded = self.tokenizer(
            text,
            truncation=True,
            max_length=self.max_length,
            padding="max_length",
            return_offsets_mapping=True,
        )
        labels_by_char = char_labels(row, self.label2id)
        token_labels: list[int] = []
        for start, end in encoded.pop("offset_mapping"):
            if end <= start:
                token_labels.append(-100)
            else:
                token_labels.append(labels_by_char[start])
        encoded["labels"] = token_labels
        return {key: torch.tensor(value) for key, value in encoded.items()}


def evaluate(model: Any, loader: DataLoader, id2label: dict[int, str], device: torch.device) -> dict[str, float]:
    model.eval()
    gold: list[str] = []
    pred: list[str] = []
    with torch.no_grad():
        for batch in loader:
            labels = batch.pop("labels").to(device)
            batch = {key: value.to(device) for key, value in batch.items()}
            logits = model(**batch).logits
            predictions = logits.argmax(dim=-1)
            for row_pred, row_gold in zip(predictions.cpu().tolist(), labels.cpu().tolist()):
                for pred_id, gold_id in zip(row_pred, row_gold):
                    if gold_id == -100:
                        continue
                    gold.append(id2label[gold_id])
                    pred.append(id2label[pred_id])
    precision, recall, f1, _ = precision_recall_fscore_support(
        gold,
        pred,
        average="micro",
        labels=[label for label in set(gold + pred) if label != "O"],
        zero_division=0,
    )
    return {"precision": float(precision), "recall": float(recall), "f1": float(f1)}


def main() -> None:
    parser = argparse.ArgumentParser(description="Train a BERT token-classification baseline for CMeEE.")
    parser.add_argument("--model-path", default=str(ROOT_DIR / "data" / "model_data" / "chinese-bert-wwm-ext"))
    parser.add_argument("--output-dir", default=str(ROOT_DIR / "data" / "output" / "cmeee_bert"))
    parser.add_argument("--max-length", type=int, default=192)
    parser.add_argument("--batch-size", type=int, default=8)
    parser.add_argument("--epochs", type=int, default=3)
    parser.add_argument("--lr", type=float, default=3e-5)
    parser.add_argument("--train-limit", type=int, default=0, help="Use a small value for a quick smoke run.")
    parser.add_argument("--dev-limit", type=int, default=0, help="Use a small value for a quick smoke run.")
    args = parser.parse_args()

    train_rows = read_json(CMeEE_TRAIN)
    dev_rows = read_json(CMeEE_DEV)
    if args.train_limit:
        train_rows = train_rows[: args.train_limit]
    if args.dev_limit:
        dev_rows = dev_rows[: args.dev_limit]

    labels = collect_labels(train_rows + dev_rows)
    label2id = {label: idx for idx, label in enumerate(labels)}
    id2label = {idx: label for label, idx in label2id.items()}

    tokenizer = AutoTokenizer.from_pretrained(args.model_path, use_fast=True)
    model = AutoModelForTokenClassification.from_pretrained(
        args.model_path,
        num_labels=len(labels),
        id2label=id2label,
        label2id=label2id,
    )

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model.to(device)

    train_loader = DataLoader(
        CMeEEDataset(train_rows, tokenizer, label2id, args.max_length),
        batch_size=args.batch_size,
        shuffle=True,
    )
    dev_loader = DataLoader(
        CMeEEDataset(dev_rows, tokenizer, label2id, args.max_length),
        batch_size=args.batch_size,
    )

    optimizer = torch.optim.AdamW(model.parameters(), lr=args.lr)
    best_f1 = -1.0
    output_dir = Path(args.output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    for epoch in range(1, args.epochs + 1):
        model.train()
        total_loss = 0.0
        for batch in train_loader:
            labels_tensor = batch.pop("labels").to(device)
            batch = {key: value.to(device) for key, value in batch.items()}
            outputs = model(**batch, labels=labels_tensor)
            loss = outputs.loss
            loss.backward()
            optimizer.step()
            optimizer.zero_grad()
            total_loss += float(loss.item())

        metrics = evaluate(model, dev_loader, id2label, device)
        metrics["epoch"] = epoch
        metrics["train_loss"] = total_loss / max(len(train_loader), 1)
        print(json.dumps(metrics, ensure_ascii=False))

        if metrics["f1"] > best_f1:
            best_f1 = metrics["f1"]
            model.save_pretrained(output_dir)
            tokenizer.save_pretrained(output_dir)
            (output_dir / "labels.json").write_text(json.dumps(labels, ensure_ascii=False, indent=2), encoding="utf-8")
            (output_dir / "best_metrics.json").write_text(
                json.dumps(metrics, ensure_ascii=False, indent=2),
                encoding="utf-8",
            )


if __name__ == "__main__":
    main()
