from __future__ import annotations

from collections import Counter, defaultdict
from typing import Any


def _span_key(entity: dict[str, Any]) -> tuple[str, int, int, str]:
    return (
        str(entity.get("type", "")),
        int(entity.get("start_idx", -1)),
        int(entity.get("end_idx", -1)),
        str(entity.get("entity", "")),
    )


def entity_dictionary(
    train_rows: list[dict[str, Any]],
    min_count: int = 2,
    min_len: int = 2,
) -> dict[str, set[str]]:
    counts: dict[str, Counter[str]] = defaultdict(Counter)
    for row in train_rows:
        for entity in row.get("entities", []):
            name = str(entity.get("entity", "")).strip()
            entity_type = str(entity.get("type", "")).strip()
            if len(name) >= min_len and entity_type:
                counts[name][entity_type] += 1
    dictionary: dict[str, set[str]] = {}
    for name, type_counts in counts.items():
        for entity_type, count in type_counts.items():
            if count >= min_count:
                dictionary.setdefault(name, set()).add(entity_type)
    return dictionary


def predict_entities_by_dictionary(text: str, dictionary: dict[str, set[str]]) -> list[dict[str, Any]]:
    predictions: list[dict[str, Any]] = []
    occupied: set[tuple[int, int, str]] = set()
    for name in sorted(dictionary, key=len, reverse=True):
        start = text.find(name)
        while start >= 0:
            end = start + len(name)
            for entity_type in dictionary[name]:
                key = (start, end, entity_type)
                if key not in occupied:
                    predictions.append(
                        {
                            "start_idx": start,
                            "end_idx": end,
                            "type": entity_type,
                            "entity": name,
                        }
                    )
                    occupied.add(key)
            start = text.find(name, start + 1)
    return predictions


def micro_f1(gold: list[list[dict[str, Any]]], pred: list[list[dict[str, Any]]]) -> dict[str, float]:
    tp = fp = fn = 0
    for gold_entities, pred_entities in zip(gold, pred):
        gold_set = {_span_key(entity) for entity in gold_entities}
        pred_set = {_span_key(entity) for entity in pred_entities}
        tp += len(gold_set & pred_set)
        fp += len(pred_set - gold_set)
        fn += len(gold_set - pred_set)
    precision = tp / (tp + fp) if tp + fp else 0.0
    recall = tp / (tp + fn) if tp + fn else 0.0
    f1 = 2 * precision * recall / (precision + recall) if precision + recall else 0.0
    return {
        "precision": round(precision, 4),
        "recall": round(recall, 4),
        "f1": round(f1, 4),
        "tp": tp,
        "fp": fp,
        "fn": fn,
    }


def evaluate_cmeee_dictionary(
    train_rows: list[dict[str, Any]],
    dev_rows: list[dict[str, Any]],
    min_count: int = 2,
    max_samples: int | None = 1200,
) -> dict[str, Any]:
    dictionary = entity_dictionary(train_rows, min_count=min_count)
    sample = dev_rows[:max_samples] if max_samples else dev_rows
    gold = [row.get("entities", []) for row in sample]
    pred = [predict_entities_by_dictionary(str(row.get("text", "")), dictionary) for row in sample]
    metrics = micro_f1(gold, pred)
    metrics.update(
        {
            "task": "CMeEE-V2 entity extraction",
            "method": f"dictionary baseline, min_count={min_count}",
            "samples": len(sample),
            "dictionary_terms": len(dictionary),
        }
    )
    return metrics
