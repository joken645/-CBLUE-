# 开题报告实现清单

| 模块 | 目标 | 当前状态 |
| --- | --- | --- |
| 数据预处理 | 读取 CBLUE 中 CMeEE、CMeIE、KUAKE-QIC 并统计规模 | 已实现 |
| 实体抽取 | CMeEE 词典基线，输出 Precision/Recall/F1 | 已实现 |
| 模型结果 | 汇总 chinese-bert-wwm-ext 本地训练日志 | 已实现 |
| 显著性检验 | Mann-Whitney U，判断 p < 0.05 | 已实现 |
| 知识图谱 | CMeIE 抽取 150 条三元组并生成 Neo4j Cypher | 已实现 |
| Demo | Streamlit 页面展示实验摘要、三元组和分诊示例 | 已实现 |
| 仓库交付 | README、依赖文件、忽略大文件 | 已实现 |

建议答辩时重点展示 `data/generated/summary.md`、Streamlit 页面和 Neo4j 导入效果。
