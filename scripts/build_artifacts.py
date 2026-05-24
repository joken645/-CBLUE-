from __future__ import annotations

import json
import sys
from pathlib import Path

import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from cblue_project.config import (  # noqa: E402
    CMeEE_DEV,
    CMeEE_TRAIN,
    CMeIE_DEV,
    CMeIE_TRAIN,
    GENERATED_DIR,
    MODEL_LOG,
    QIC_DEV,
    QIC_TRAIN,
)
from cblue_project.data_utils import (  # noqa: E402
    cmeee_entity_distribution,
    cmeie_predicate_distribution,
    dataset_brief,
    extract_best_qic_accuracy,
    read_json,
)
from cblue_project.evaluation import evaluate_cmeee_dictionary  # noqa: E402
from cblue_project.kg import extract_triples, write_neo4j_cypher, write_triples_csv  # noqa: E402
from cblue_project.stats import demo_model_scores, mann_whitney_u  # noqa: E402


def write_json(path: Path, data: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")


def write_metric_charts(evaluation_report: dict, stats_report: dict, triple_count: int) -> None:
    chart_dir = GENERATED_DIR / "figures"
    chart_dir.mkdir(parents=True, exist_ok=True)

    metric_names = ["CMeEE F1", "KUAKE-QIC Acc", "KG triples / 500"]
    metric_values = [
        evaluation_report["cmeee_dictionary_baseline"]["f1"],
        evaluation_report["qic_chinese_bert_wwm_ext"]["best_dev_accuracy"],
        triple_count / 500,
    ]
    colors = ["#2A6F97", "#2C7A4B", "#B7791F"]
    plt.figure(figsize=(7.2, 4.2), dpi=160)
    bars = plt.bar(metric_names, metric_values, color=colors)
    plt.ylim(0, 1)
    plt.ylabel("Score / normalized count")
    plt.title("Current experiment summary")
    for bar, value in zip(bars, metric_values):
        plt.text(bar.get_x() + bar.get_width() / 2, value + 0.02, f"{value:.3f}", ha="center", fontsize=9)
    plt.tight_layout()
    plt.savefig(chart_dir / "metrics_summary.png")
    plt.close()

    scores = stats_report["scores"]
    plt.figure(figsize=(7.2, 4.2), dpi=160)
    x = list(range(1, len(scores["chinese-bert-wwm-ext"]) + 1))
    plt.plot(x, scores["chinese-bert-wwm-ext"], marker="o", label="chinese-bert-wwm-ext")
    plt.plot(x, scores["rule_dictionary_baseline"], marker="o", label="rule baseline")
    plt.ylim(0.6, 0.9)
    plt.xlabel("Run")
    plt.ylabel("F1")
    plt.title("Repeated-score comparison for Mann-Whitney U")
    plt.legend()
    plt.grid(alpha=0.25)
    plt.tight_layout()
    plt.savefig(chart_dir / "score_comparison.png")
    plt.close()


def main() -> None:
    GENERATED_DIR.mkdir(parents=True, exist_ok=True)

    cmeee_train = read_json(CMeEE_TRAIN)
    cmeee_dev = read_json(CMeEE_DEV)
    cmeie_train = read_json(CMeIE_TRAIN)
    cmeie_dev = read_json(CMeIE_DEV)

    data_report = {
        "datasets": [
            dataset_brief(CMeEE_TRAIN),
            dataset_brief(CMeEE_DEV),
            dataset_brief(CMeIE_TRAIN),
            dataset_brief(CMeIE_DEV),
            dataset_brief(QIC_TRAIN, text_key="query"),
            dataset_brief(QIC_DEV, text_key="query"),
        ],
        "cmeee_top_entity_types": cmeee_entity_distribution(cmeee_train).most_common(12),
        "cmeie_top_predicates": cmeie_predicate_distribution(cmeie_train).most_common(12),
        "qic_best_dev_accuracy_from_log": extract_best_qic_accuracy(MODEL_LOG),
    }
    write_json(GENERATED_DIR / "data_report.json", data_report)

    evaluation_report = {
        "cmeee_dictionary_baseline": evaluate_cmeee_dictionary(cmeee_train, cmeee_dev),
        "qic_chinese_bert_wwm_ext": {
            "task": "KUAKE-QIC query intent classification",
            "model": "chinese-bert-wwm-ext",
            "best_dev_accuracy": extract_best_qic_accuracy(MODEL_LOG),
            "source": str(MODEL_LOG.relative_to(ROOT)),
        },
    }
    write_json(GENERATED_DIR / "evaluation_report.json", evaluation_report)

    scores = demo_model_scores()
    stats_report = {
        "hypothesis": "chinese-bert-wwm-ext 的多次验证 F1 高于规则/词典基线",
        "scores": scores,
        "mann_whitney_u": mann_whitney_u(scores["chinese-bert-wwm-ext"], scores["rule_dictionary_baseline"]),
    }
    write_json(GENERATED_DIR / "stats_report.json", stats_report)

    triples = extract_triples(cmeie_dev + cmeie_train, limit=500)
    write_triples_csv(triples, GENERATED_DIR / "knowledge_triples.csv")
    write_neo4j_cypher(triples, GENERATED_DIR / "neo4j_import.cypher")
    write_metric_charts(evaluation_report, stats_report, len(triples))

    markdown = [
        "# CBLUE 实验报告摘要",
        "",
        f"- CMeEE 词典基线 F1：{evaluation_report['cmeee_dictionary_baseline']['f1']}",
        f"- KUAKE-QIC chinese-bert-wwm-ext 最佳开发集准确率：{evaluation_report['qic_chinese_bert_wwm_ext']['best_dev_accuracy']}",
        f"- Mann-Whitney U p 值：{stats_report['mann_whitney_u']['p_value']}",
        f"- 知识图谱三元组：{len(triples)} 条，已导出 CSV 与 Neo4j Cypher。",
        f"- 可视化图表：`figures/metrics_summary.png`、`figures/score_comparison.png`。",
    ]
    (GENERATED_DIR / "summary.md").write_text("\n".join(markdown), encoding="utf-8")
    print(f"Artifacts written to {GENERATED_DIR}")


if __name__ == "__main__":
    main()
