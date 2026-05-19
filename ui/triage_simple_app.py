from __future__ import annotations

import json
import sys
from pathlib import Path

import pandas as pd
import streamlit as st

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from cblue_project.config import GENERATED_DIR
from ui.triage_engine import extract_keywords, predict_triage


EXAMPLES = [
    "胸口疼还冒汗，需要挂什么科",
    "发热咳嗽三天，喉咙痛",
    "一直腹泻恶心，应该去哪里",
    "头晕恶心想吐，挂什么科",
]


def load_json(name: str, default: dict) -> dict:
    path = GENERATED_DIR / name
    if not path.exists():
        return default
    return json.loads(path.read_text(encoding="utf-8"))


def metric_card(label: str, value: str, caption: str) -> None:
    st.markdown(
        f"""
        <div class="metric-card">
            <div class="metric-label">{label}</div>
            <div class="metric-value">{value}</div>
            <div class="metric-caption">{caption}</div>
        </div>
        """,
        unsafe_allow_html=True,
    )


st.set_page_config(page_title="CBLUE 医学文本理解 Demo", page_icon="CB", layout="wide")

st.markdown(
    """
    <style>
    .stApp { background: #f7f9fb; }
    .block-container { max-width: 1220px; padding-top: 1.5rem; }
    .hero {
        background: #12343b;
        color: white;
        padding: 24px 28px;
        border-radius: 8px;
        margin-bottom: 18px;
    }
    .hero h1 { font-size: 32px; margin: 0 0 8px 0; letter-spacing: 0; }
    .hero p { margin: 0; line-height: 1.7; color: #d8eef1; }
    .metric-card {
        background: white;
        border: 1px solid #dde5ea;
        border-radius: 8px;
        padding: 16px;
        min-height: 124px;
    }
    .metric-label { color: #49636d; font-size: 14px; }
    .metric-value { color: #0f252b; font-size: 26px; font-weight: 800; margin-top: 8px; }
    .metric-caption { color: #61747d; font-size: 13px; margin-top: 8px; line-height: 1.5; }
    </style>
    """,
    unsafe_allow_html=True,
)

data_report = load_json("data_report.json", {})
evaluation_report = load_json("evaluation_report.json", {})
stats_report = load_json("stats_report.json", {})

qic_acc = (
    evaluation_report.get("qic_chinese_bert_wwm_ext", {}).get("best_dev_accuracy")
    or data_report.get("qic_best_dev_accuracy_from_log")
)
cmeee_f1 = evaluation_report.get("cmeee_dictionary_baseline", {}).get("f1")
p_value = stats_report.get("mann_whitney_u", {}).get("p_value")

st.markdown(
    """
    <div class="hero">
        <h1>CBLUE 中文生物医学文本理解实验平台</h1>
        <p>围绕开题报告中的 CMeEE、CMeIE、chinese-bert-wwm-ext、Mann-Whitney U 检验和 Neo4j 知识图谱导出，提供可复现实验摘要与在线演示。</p>
    </div>
    """,
    unsafe_allow_html=True,
)

col1, col2, col3, col4 = st.columns(4)
with col1:
    metric_card("KUAKE-QIC 最佳准确率", f"{qic_acc:.4f}" if qic_acc else "待生成", "来自本地 chinese-bert-wwm-ext 训练日志")
with col2:
    metric_card("CMeEE 基线 F1", f"{cmeee_f1:.4f}" if cmeee_f1 else "待生成", "词典匹配基线，用于和 BERT 结果对照")
with col3:
    metric_card("Mann-Whitney U p 值", f"{p_value:.6f}" if p_value else "待生成", "用于比较模型与基线多次实验结果")
with col4:
    triples_path = GENERATED_DIR / "knowledge_triples.csv"
    triple_count = len(pd.read_csv(triples_path)) if triples_path.exists() else 0
    metric_card("知识图谱三元组", str(triple_count or "待生成"), "CMeIE 抽取并导出为 Neo4j Cypher")

tabs = st.tabs(["实验摘要", "知识图谱", "在线分诊 Demo"])

with tabs[0]:
    st.subheader("数据集概览")
    datasets = data_report.get("datasets", [])
    if datasets:
        st.dataframe(pd.DataFrame(datasets), use_container_width=True, hide_index=True)
    else:
        st.info("请先运行 `python scripts/build_artifacts.py` 生成实验产物。")

    left, right = st.columns(2)
    with left:
        st.subheader("CMeEE 实体类型 Top 12")
        entity_rows = data_report.get("cmeee_top_entity_types", [])
        if entity_rows:
            entity_df = pd.DataFrame(entity_rows, columns=["实体类型", "数量"])
            st.bar_chart(entity_df.set_index("实体类型"))
    with right:
        st.subheader("CMeIE 关系类型 Top 12")
        predicate_rows = data_report.get("cmeie_top_predicates", [])
        if predicate_rows:
            predicate_df = pd.DataFrame(predicate_rows, columns=["关系", "数量"])
            st.bar_chart(predicate_df.set_index("关系"))

    st.subheader("统计检验")
    if stats_report:
        st.json(stats_report, expanded=False)

with tabs[1]:
    st.subheader("Neo4j 导入材料")
    if triples_path.exists():
        triples_df = pd.read_csv(triples_path)
        st.dataframe(triples_df.head(150), use_container_width=True, hide_index=True)
        st.code((GENERATED_DIR / "neo4j_import.cypher").read_text(encoding="utf-8")[:3000], language="cypher")
    else:
        st.info("运行 `python scripts/build_artifacts.py` 后会生成 `knowledge_triples.csv` 和 `neo4j_import.cypher`。")

with tabs[2]:
    st.subheader("患者主诉智能分诊")
    if "example_text" not in st.session_state:
        st.session_state.example_text = EXAMPLES[0]

    left, right = st.columns([2, 1])
    with right:
        chosen = st.radio("示例主诉", EXAMPLES, index=EXAMPLES.index(st.session_state.example_text))
        st.session_state.example_text = chosen
    with left:
        text = st.text_area("患者主诉", value=st.session_state.example_text, height=150)
        submitted = st.button("开始分析", type="primary", use_container_width=True)

    if submitted:
        result = predict_triage(text)
        keywords = extract_keywords(text)
        a, b = st.columns(2)
        with a:
            st.success(f"推荐科室：{result.department}")
            st.write("初步病因方向：")
            for cause in result.possible_causes:
                st.write(f"- {cause}")
        with b:
            if result.urgency == "高风险":
                st.error(f"紧急程度：{result.urgency}")
            elif result.urgency == "中高风险":
                st.warning(f"紧急程度：{result.urgency}")
            else:
                st.info(f"紧急程度：{result.urgency}")
            st.write("识别关键词：" + ("、".join(keywords) if keywords else "暂无"))
        st.write("建议：")
        for item in result.advice:
            st.write(f"- {item}")
        st.caption(result.rationale)
