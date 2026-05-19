from __future__ import annotations

import json
import re
from collections import Counter
from pathlib import Path
from typing import Any


def read_json(path: Path) -> list[dict[str, Any]]:
    with path.open("r", encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, list):
        raise ValueError(f"{path} is not a JSON list")
    return data


def dataset_brief(path: Path, text_key: str = "text") -> dict[str, Any]:
    rows = read_json(path)
    lengths = [len(str(row.get(text_key, ""))) for row in rows]
    return {
        "file": path.name,
        "samples": len(rows),
        "avg_text_len": round(sum(lengths) / max(len(lengths), 1), 2),
        "max_text_len": max(lengths) if lengths else 0,
    }


def cmeee_entity_distribution(rows: list[dict[str, Any]]) -> Counter[str]:
    counter: Counter[str] = Counter()
    for row in rows:
        for entity in row.get("entities", []):
            entity_type = entity.get("type")
            if entity_type:
                counter[str(entity_type)] += 1
    return counter


def cmeie_predicate_distribution(rows: list[dict[str, Any]]) -> Counter[str]:
    counter: Counter[str] = Counter()
    for row in rows:
        for spo in row.get("spo_list", []):
            predicate = spo.get("predicate")
            if predicate:
                counter[str(predicate)] += 1
    return counter


def extract_best_qic_accuracy(log_path: Path) -> float | None:
    if not log_path.exists():
        return None
    pattern = re.compile(r"best step\s+\d+:\s+([0-9.]+)", re.IGNORECASE)
    best: float | None = None
    for line in log_path.read_text(encoding="utf-8", errors="ignore").splitlines():
        match = pattern.search(line)
        if match:
            best = float(match.group(1))
    return best
