# CBLUE 中文生物医学文本理解实验平台

本仓库按照开题报告整理为一个可运行的 CBLUE Demo：覆盖 CMeEE 实体抽取、CMeIE 关系三元组、chinese-bert-wwm-ext 训练日志指标、Mann-Whitney U 显著性检验、Neo4j Cypher 导出和 Streamlit 可视化展示。

## 项目结构

```text
CBLUE/
├─ cblue_project/              # 数据读取、评估、统计检验、知识图谱导出
├─ scripts/build_artifacts.py  # 一键生成实验报告产物
├─ ui/triage_simple_app.py     # Streamlit 展示系统
├─ data/generated/             # 生成的 JSON/CSV/Cypher 报告产物
├─ CBLUEDatasets/              # 本地 CBLUE 数据集，不建议提交到 GitHub
└─ data/model_data/            # 本地 chinese-bert-wwm-ext，不建议提交到 GitHub
```

## 快速开始

```powershell
pip install -r requirements.txt
python scripts/build_artifacts.py
streamlit run ui/triage_simple_app.py
```

运行后会生成：

- `data/generated/data_report.json`：CMeEE、CMeIE、KUAKE-QIC 数据规模与分布
- `data/generated/evaluation_report.json`：CMeEE 词典基线 F1 与 KUAKE-QIC 本地 BERT 日志指标
- `data/generated/stats_report.json`：Mann-Whitney U 显著性检验结果
- `data/generated/knowledge_triples.csv`：150 条医学知识三元组
- `data/generated/neo4j_import.cypher`：可直接导入 Neo4j 的 Cypher 脚本

## 与开题报告对应关系

| 开题报告任务 | 仓库实现 |
| --- | --- |
| 使用 CBLUE 数据集 | 读取本地 `CBLUEDatasets` 中 CMeEE、CMeIE、KUAKE-QIC |
| 采用 chinese-bert-wwm-ext | 读取本地训练日志中的最佳开发集准确率，保留模型路径约定 |
| 计算 F1 等指标 | `cblue_project/evaluation.py` 提供 CMeEE 微平均 Precision/Recall/F1 |
| Mann-Whitney U 检验 | `cblue_project/stats.py` 输出 U 值、p 值与显著性 |
| Neo4j 知识图谱 | `cblue_project/kg.py` 导出 CSV 与 Cypher |
| Demo 展示 | `ui/triage_simple_app.py` 展示指标、图谱样例和智能分诊 |
| GitHub 仓库材料 | README、requirements、environment、.gitignore 已补齐 |

## Neo4j 导入

先运行：

```powershell
python scripts/build_artifacts.py
```

再把 `data/generated/neo4j_import.cypher` 放入 Neo4j Browser 或 cypher-shell 执行即可创建实体节点和 `RELATED_TO` 关系。

## 说明

本仓库默认不提交 `CBLUEDatasets`、预训练模型和训练输出，因为这些文件较大，且部分文件超过 GitHub 普通仓库限制。若需要复现实验，请将数据和模型按上面的目录结构放回本地。
