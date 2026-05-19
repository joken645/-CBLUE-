from __future__ import annotations

from dataclasses import dataclass


@dataclass
class TriageResult:
    department: str
    possible_causes: list[str]
    urgency: str
    advice: list[str]
    keywords: list[str]
    rationale: str


RULES = [
    {
        "name": "cardio",
        "keywords": ["胸痛", "胸闷", "冒汗", "心慌", "呼吸困难", "胸口发紧"],
        "department": "心内科 / 急诊",
        "possible_causes": ["心绞痛", "急性冠脉综合征", "心律失常"],
        "urgency": "高风险",
        "advice": ["立即停止活动", "尽快前往急诊或胸痛中心", "不要自行拖延观察"],
    },
    {
        "name": "respiratory",
        "keywords": ["发热", "咳嗽", "咳痰", "喉咙痛", "鼻塞", "气短"],
        "department": "呼吸内科",
        "possible_causes": ["上呼吸道感染", "支气管炎", "肺部感染"],
        "urgency": "中风险",
        "advice": ["多喝温水", "注意休息", "若高热持续或气促加重请及时就医"],
    },
    {
        "name": "gastro",
        "keywords": ["腹痛", "腹泻", "恶心", "呕吐", "腹胀", "反酸", "胃痛"],
        "department": "消化内科",
        "possible_causes": ["急性胃肠炎", "胃炎", "功能性消化不良"],
        "urgency": "中风险",
        "advice": ["清淡饮食", "避免辛辣油腻", "注意补液，防止脱水"],
    },
    {
        "name": "neuro",
        "keywords": ["头痛", "头晕", "恶心想吐", "肢体麻木", "说话不清", "眩晕"],
        "department": "神经内科",
        "possible_causes": ["偏头痛", "眩晕综合征", "脑血管问题"],
        "urgency": "中高风险",
        "advice": ["先休息并观察变化", "若伴偏瘫或意识异常请立即就医", "避免独自外出"],
    },
    {
        "name": "urinary",
        "keywords": ["尿频", "尿急", "尿痛", "腰痛", "血尿"],
        "department": "泌尿外科",
        "possible_causes": ["尿路感染", "泌尿系结石", "肾脏炎症"],
        "urgency": "中风险",
        "advice": ["多饮水", "避免憋尿", "若伴高热或剧痛请尽快就医"],
    },
    {
        "name": "gynecology",
        "keywords": ["月经不调", "腹部坠痛", "白带异常", "阴道出血"],
        "department": "妇科",
        "possible_causes": ["盆腔炎", "内分泌紊乱", "妇科炎症"],
        "urgency": "中风险",
        "advice": ["注意休息", "避免劳累", "异常出血明显时及时就医"],
    },
]


CHILDREN_WORDS = ["孩子", "小孩", "宝宝", "儿童", "幼儿"]

NORMALIZATION = {
    "拉肚子": "腹泻",
    "想拉肚子": "腹泻",
    "肚子泻": "腹泻",
    "窜稀": "腹泻",
    "跑厕所": "腹泻",
    "想吐": "呕吐",
    "恶心想吐": "恶心",
    "头晕想吐": "头晕 恶心",
    "胃里翻腾": "恶心",
    "胃里难受": "胃痛",
    "反胃": "恶心",
    "吐了": "呕吐",
    "老想吐": "呕吐",
    "一直吐": "呕吐",
    "呕了": "呕吐",
    "肚子疼": "腹痛",
    "胃疼": "胃痛",
    "胃不舒服": "胃痛",
    "胃难受": "胃痛",
    "肚子胀": "腹胀",
    "烧心": "反酸",
    "胸口疼": "胸痛",
    "心口疼": "胸痛",
    "胸口堵": "胸闷",
    "胸口堵得慌": "胸闷",
    "胸口发闷": "胸闷",
    "胸口憋": "胸闷",
    "胸闷气短": "胸闷 呼吸困难",
    "喘得厉害": "呼吸困难",
    "喘得不行": "呼吸困难",
    "喘不过气": "呼吸困难",
    "呼吸不过来": "呼吸困难",
    "嗓子疼": "喉咙痛",
    "咽喉痛": "喉咙痛",
    "喉咙疼": "喉咙痛",
    "喘不上气": "呼吸困难",
    "胃胀": "腹胀",
    "烧": "发热",
    "发烧": "发热",
    "低烧": "发热",
    "头疼": "头痛",
    "脑壳痛": "头痛",
    "头发晕": "头晕",
    "晕乎乎": "头晕",
    "说不清话": "说话不清",
    "手脚发麻": "肢体麻木",
    "尿血": "血尿",
    "小便疼": "尿痛",
    "尿尿疼": "尿痛",
    "尿得频": "尿频",
    "总想上厕所": "尿频",
    "老想上厕所": "尿频",
    "小肚子坠痛": "腹部坠痛",
    "下面出血": "阴道出血",
    "下边流血": "阴道出血",
}


def normalize_text(text: str) -> str:
    normalized = text.strip()
    for old, new in NORMALIZATION.items():
        normalized = normalized.replace(old, new)
    return normalized


def extract_keywords(text: str) -> list[str]:
    normalized = normalize_text(text)
    hits: list[str] = []
    for rule in RULES:
        for keyword in rule["keywords"]:
            if keyword in normalized and keyword not in hits:
                hits.append(keyword)
    for child_word in CHILDREN_WORDS:
        if child_word in normalized and child_word not in hits:
            hits.append(child_word)
    return hits


def predict_triage(text: str) -> TriageResult:
    normalized = normalize_text(text)
    matched: list[tuple[dict, list[str]]] = []

    for rule in RULES:
        hits = [keyword for keyword in rule["keywords"] if keyword in normalized]
        if hits:
            matched.append((rule, hits))

    if any(word in normalized for word in CHILDREN_WORDS):
        child_hits = [word for word in CHILDREN_WORDS if word in normalized]
        matched.append(
            (
                {
                    "department": "儿科",
                    "possible_causes": ["儿童呼吸道感染", "儿童消化道不适", "儿童常见发热症状"],
                    "urgency": "中风险",
                    "advice": ["关注精神状态", "持续高热需及时就医", "遵医嘱进行儿科评估"],
                },
                child_hits,
            )
        )

    if not matched:
        return TriageResult(
            department="全科医学科 / 导诊台",
            possible_causes=["症状描述不足，建议补充主诉后再次判断"],
            urgency="待判断",
            advice=[
                "补充症状部位、持续时间和伴随症状",
                "如有胸痛、呼吸困难、意识障碍等情况，请立即急诊就医",
            ],
            keywords=[],
            rationale="当前输入未提取到足够的症状关键词，系统建议先补充更完整的病情描述。",
        )

    matched.sort(key=lambda item: (len(item[1]), item[0]["urgency"] == "高风险"), reverse=True)
    best_rule, best_hits = matched[0]
    rationale = f"系统从主诉中识别到关键词：{'、'.join(best_hits)}，因此优先推荐 {best_rule['department']}。"

    return TriageResult(
        department=best_rule["department"],
        possible_causes=best_rule["possible_causes"],
        urgency=best_rule["urgency"],
        advice=best_rule["advice"],
        keywords=best_hits,
        rationale=rationale,
    )
