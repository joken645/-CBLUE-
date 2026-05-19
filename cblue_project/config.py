from __future__ import annotations

from pathlib import Path


ROOT_DIR = Path(__file__).resolve().parents[1]
DATASET_DIR = ROOT_DIR / "CBLUEDatasets"
GENERATED_DIR = ROOT_DIR / "data" / "generated"
MODEL_LOG = ROOT_DIR / "data" / "output" / "qic" / "chinese-bert-wwm-ext" / "qic_chinese-bert-wwm-ext.log"

CMeEE_DEV = DATASET_DIR / "CMeEE-V2" / "CMeEE-V2_dev_基础清洗.json"
CMeEE_TRAIN = DATASET_DIR / "CMeEE-V2" / "CMeEE-V2_train_基础清洗.json"
CMeIE_DEV = DATASET_DIR / "CMeIE-V2" / "CMeIE-V2_dev_基础清洗.json"
CMeIE_TRAIN = DATASET_DIR / "CMeIE-V2" / "CMeIE-V2_train_基础清洗.json"
QIC_TRAIN = DATASET_DIR / "KUAKE-QIC" / "KUAKE-QIC_train_基础清洗.json"
QIC_DEV = DATASET_DIR / "KUAKE-QIC" / "KUAKE-QIC_dev_基础清洗.json"

