from __future__ import annotations

import csv
from collections import OrderedDict
from pathlib import Path
from typing import Any


def _object_value(spo: dict[str, Any]) -> str:
    obj = spo.get("object", {})
    if isinstance(obj, dict):
        return str(obj.get("@value", "")).strip()
    return str(obj).strip()


def _object_type(spo: dict[str, Any]) -> str:
    obj_type = spo.get("object_type", {})
    if isinstance(obj_type, dict):
        return str(obj_type.get("@value", "")).strip()
    return str(obj_type).strip()


def extract_triples(rows: list[dict[str, Any]], limit: int = 150) -> list[dict[str, str]]:
    triples: "OrderedDict[tuple[str, str, str], dict[str, str]]" = OrderedDict()
    for row in rows:
        for spo in row.get("spo_list", []):
            subject = str(spo.get("subject", "")).strip()
            predicate = str(spo.get("predicate", "")).strip()
            obj = _object_value(spo)
            if not subject or not predicate or not obj:
                continue
            key = (subject, predicate, obj)
            triples.setdefault(
                key,
                {
                    "subject": subject,
                    "subject_type": str(spo.get("subject_type", "")).strip() or "实体",
                    "predicate": predicate,
                    "object": obj,
                    "object_type": _object_type(spo) or "实体",
                    "source_text": str(row.get("text", ""))[:120],
                },
            )
            if len(triples) >= limit:
                return list(triples.values())
    return list(triples.values())


def write_triples_csv(triples: list[dict[str, str]], path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8-sig", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["subject", "subject_type", "predicate", "object", "object_type", "source_text"],
        )
        writer.writeheader()
        writer.writerows(triples)


def cypher_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace("'", "\\'")


def write_neo4j_cypher(triples: list[dict[str, str]], path: Path) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    lines = [
        "CREATE CONSTRAINT cblue_entity_name IF NOT EXISTS",
        "FOR (e:Entity) REQUIRE e.name IS UNIQUE;",
        "",
    ]
    for triple in triples:
        subject = cypher_escape(triple["subject"])
        obj = cypher_escape(triple["object"])
        predicate = cypher_escape(triple["predicate"])
        subject_type = cypher_escape(triple["subject_type"])
        object_type = cypher_escape(triple["object_type"])
        source = cypher_escape(triple["source_text"])
        lines.extend(
            [
                f"MERGE (s:Entity {{name: '{subject}'}})",
                f"  SET s.type = '{subject_type}';",
                f"MERGE (o:Entity {{name: '{obj}'}})",
                f"  SET o.type = '{object_type}';",
                "MATCH (s:Entity {name: '" + subject + "'}), (o:Entity {name: '" + obj + "'})",
                (
                    "MERGE (s)-[r:RELATED_TO {predicate: '"
                    + predicate
                    + "'}]->(o) SET r.source = '"
                    + source
                    + "';"
                ),
                "",
            ]
        )
    path.write_text("\n".join(lines), encoding="utf-8")

