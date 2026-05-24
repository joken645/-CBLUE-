# 复现说明

本仓库不直接提交 CBLUE 原始数据和 `chinese-bert-wwm-ext` 权重。原因是数据和模型体积较大，部分文件超过普通 GitHub 仓库适合保存的范围。复现实验时，需要把数据和模型放到下面的本地路径。

## 目录要求

```text
CBLUEDatasets/
├─ CMeEE-V2/
│  ├─ CMeEE-V2_train_基础清洗.json
│  └─ CMeEE-V2_dev_基础清洗.json
├─ CMeIE-V2/
│  ├─ CMeIE-V2_train_基础清洗.json
│  └─ CMeIE-V2_dev_基础清洗.json
└─ KUAKE-QIC/
   ├─ KUAKE-QIC_train_基础清洗.json
   └─ KUAKE-QIC_dev_基础清洗.json

data/model_data/chinese-bert-wwm-ext/
├─ config.json
├─ pytorch_model.bin
├─ tokenizer.json
└─ vocab.txt
```

## 生成实验结果

```powershell
pip install -r requirements.txt
python scripts/build_artifacts.py
```

输出位置：

- `data/generated/data_report.json`
- `data/generated/evaluation_report.json`
- `data/generated/stats_report.json`
- `data/generated/knowledge_triples.csv`
- `data/generated/neo4j_import.cypher`
- `data/generated/figures/metrics_summary.png`
- `data/generated/figures/score_comparison.png`

## 训练日志格式

KUAKE-QIC 的日志读取逻辑会查找如下格式：

```text
Training Stop! The best step 1000: 0.8163682864450128
```

日志默认路径为：

```text
data/output/qic/chinese-bert-wwm-ext/qic_chinese-bert-wwm-ext.log
```

## CMeEE BERT 训练

完整训练：

```powershell
python scripts/train_cmeee_bert.py
```

快速检查：

```powershell
python scripts/train_cmeee_bert.py --train-limit 64 --dev-limit 32 --epochs 1
```

训练输出默认写入 `data/output/cmeee_bert/`，该目录不提交到 GitHub。

## 单元测试

```powershell
python -m unittest discover -s tests
```
