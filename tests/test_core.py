from __future__ import annotations

import tempfile
import unittest
from pathlib import Path

from cblue_project.data_utils import extract_best_qic_accuracy
from cblue_project.evaluation import micro_f1
from cblue_project.kg import extract_triples, write_neo4j_cypher
from cblue_project.stats import mann_whitney_u


class EvaluationTests(unittest.TestCase):
    def test_micro_f1_counts_exact_span_matches(self) -> None:
        gold = [[{"type": "dis", "start_idx": 0, "end_idx": 2, "entity": "感冒"}]]
        pred = [[{"type": "dis", "start_idx": 0, "end_idx": 2, "entity": "感冒"}]]
        metrics = micro_f1(gold, pred)
        self.assertEqual(metrics["f1"], 1.0)
        self.assertEqual(metrics["tp"], 1)

    def test_mann_whitney_detects_separated_scores(self) -> None:
        result = mann_whitney_u([0.842, 0.851, 0.858, 0.847, 0.861], [0.684, 0.693, 0.701, 0.688, 0.697])
        self.assertLess(result["p_value"], 0.1)


class DataUtilityTests(unittest.TestCase):
    def test_extract_best_qic_accuracy_from_training_log(self) -> None:
        with tempfile.TemporaryDirectory() as tmp:
            log_path = Path(tmp) / "train.log"
            log_path.write_text("Training Stop! The best step 1000: 0.8163\n", encoding="utf-8")
            self.assertEqual(extract_best_qic_accuracy(log_path), 0.8163)


class KnowledgeGraphTests(unittest.TestCase):
    def test_extract_triples_and_write_cypher(self) -> None:
        rows = [
            {
                "text": "失眠症@引导意象可作为辅助治疗。",
                "spo_list": [
                    {
                        "subject": "失眠症",
                        "subject_type": "疾病",
                        "predicate": "辅助治疗",
                        "object": {"@value": "引导意象"},
                        "object_type": {"@value": "其他治疗"},
                    }
                ],
            }
        ]
        triples = extract_triples(rows, limit=10)
        self.assertEqual(len(triples), 1)
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "kg.cypher"
            write_neo4j_cypher(triples, path)
            text = path.read_text(encoding="utf-8")
            self.assertIn("失眠症", text)
            self.assertIn("辅助治疗", text)


if __name__ == "__main__":
    unittest.main()
