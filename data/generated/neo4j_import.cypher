CREATE CONSTRAINT cblue_entity_name IF NOT EXISTS
FOR (e:Entity) REQUIRE e.name IS UNIQUE;

MERGE (s:Entity {name: '失眠症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '引导意象和冥想'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '失眠症'}), (o:Entity {name: '引导意象和冥想'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '失眠症@引导意象和冥想指导患者以舒适、宁静的意象替代忧心忡忡的想法。';

MERGE (s:Entity {name: '失眠症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '以舒适、宁静的意象替代忧心忡忡的想法'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '失眠症'}), (o:Entity {name: '以舒适、宁静的意象替代忧心忡忡的想法'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '失眠症@引导意象和冥想指导患者以舒适、宁静的意象替代忧心忡忡的想法。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '咳嗽'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '咳嗽'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸困难'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '呼吸困难'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '咯血'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '咯血'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '体重减轻'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '体重减轻'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '发热'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '发热'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '关节痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '关节痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '皮肤病变'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '皮肤病变'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '盗汗'})
  SET o.type = '症状';
MATCH (s:Entity {name: '小细胞肺癌'}), (o:Entity {name: '盗汗'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '小细胞肺癌@可有特征性的咳嗽、呼吸困难、咯血、体重减轻、发热、关节痛、皮肤病变、盗汗，或者无症状。';

MERGE (s:Entity {name: '腺泡型软组织肉瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'alveolar soft part sarcoma'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '腺泡型软组织肉瘤'}), (o:Entity {name: 'alveolar soft part sarcoma'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '十二、腺泡型软组织肉瘤 腺泡型软组织肉瘤（alveolar soft part sarcoma）是一临床-病理实体，小儿少见，多见于15岁左右的青少年，女性多于男性。切面呈黄白或灰红色，中央含坏死和出血区，肿瘤周围有较粗的血管。';

MERGE (s:Entity {name: '腺泡型软组织肉瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '15岁左右的青少年'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '腺泡型软组织肉瘤'}), (o:Entity {name: '15岁左右的青少年'})
MERGE (s)-[r:RELATED_TO {predicate: '多发群体'}]->(o) SET r.source = '十二、腺泡型软组织肉瘤 腺泡型软组织肉瘤（alveolar soft part sarcoma）是一临床-病理实体，小儿少见，多见于15岁左右的青少年，女性多于男性。切面呈黄白或灰红色，中央含坏死和出血区，肿瘤周围有较粗的血管。';

MERGE (s:Entity {name: '腺泡型软组织肉瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '女性'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '腺泡型软组织肉瘤'}), (o:Entity {name: '女性'})
MERGE (s)-[r:RELATED_TO {predicate: '发病性别倾向'}]->(o) SET r.source = '十二、腺泡型软组织肉瘤 腺泡型软组织肉瘤（alveolar soft part sarcoma）是一临床-病理实体，小儿少见，多见于15岁左右的青少年，女性多于男性。切面呈黄白或灰红色，中央含坏死和出血区，肿瘤周围有较粗的血管。';

MERGE (s:Entity {name: '腺泡型软组织肉瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肿瘤周围有较粗的血管'})
  SET o.type = '症状';
MATCH (s:Entity {name: '腺泡型软组织肉瘤'}), (o:Entity {name: '肿瘤周围有较粗的血管'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '十二、腺泡型软组织肉瘤 腺泡型软组织肉瘤（alveolar soft part sarcoma）是一临床-病理实体，小儿少见，多见于15岁左右的青少年，女性多于男性。切面呈黄白或灰红色，中央含坏死和出血区，肿瘤周围有较粗的血管。';

MERGE (s:Entity {name: '腺泡型软组织肉瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '切面呈黄白或灰红色，中央含坏死和出血区'})
  SET o.type = '症状';
MATCH (s:Entity {name: '腺泡型软组织肉瘤'}), (o:Entity {name: '切面呈黄白或灰红色，中央含坏死和出血区'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '十二、腺泡型软组织肉瘤 腺泡型软组织肉瘤（alveolar soft part sarcoma）是一临床-病理实体，小儿少见，多见于15岁左右的青少年，女性多于男性。切面呈黄白或灰红色，中央含坏死和出血区，肿瘤周围有较粗的血管。';

MERGE (s:Entity {name: '乙型肝炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '同性恋'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '乙型肝炎'}), (o:Entity {name: '同性恋'})
MERGE (s)-[r:RELATED_TO {predicate: '多发群体'}]->(o) SET r.source = '乙型肝炎@### 同性恋 与HBV感染性伴侣的性接触是传播的重要途径。';

MERGE (s:Entity {name: '乙型肝炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '与HBV感染性伴侣的性接触'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '乙型肝炎'}), (o:Entity {name: '与HBV感染性伴侣的性接触'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '乙型肝炎@### 同性恋 与HBV感染性伴侣的性接触是传播的重要途径。';

MERGE (s:Entity {name: '胆管癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '感染'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胆管癌'}), (o:Entity {name: '感染'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '胆管癌@## 病因学 感染，炎症和癌症之间有密切的关联。';

MERGE (s:Entity {name: '胆管癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '炎症'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胆管癌'}), (o:Entity {name: '炎症'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胆管癌@## 病因学 感染，炎症和癌症之间有密切的关联。';

MERGE (s:Entity {name: '癌症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胆管癌'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '癌症'}), (o:Entity {name: '胆管癌'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '胆管癌@## 病因学 感染，炎症和癌症之间有密切的关联。';

MERGE (s:Entity {name: '转移性乳腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝功能'})
  SET o.type = '检查';
MATCH (s:Entity {name: '转移性乳腺癌'}), (o:Entity {name: '肝功能'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '转移性乳腺癌@### 肝功能检查 (LFT) 检查 结果 检查 所有转移性乳腺癌患者均需记录基础值并定期随访。 转移性乳腺癌@结合全血细胞计数，结果有时可提示癌症是否扩散至了骨或肝脏。';

MERGE (s:Entity {name: 'LFT'})
  SET s.type = '检查';
MERGE (o:Entity {name: '肝功能'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'LFT'}), (o:Entity {name: '肝功能'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '转移性乳腺癌@### 肝功能检查 (LFT) 检查 结果 检查 所有转移性乳腺癌患者均需记录基础值并定期随访。 转移性乳腺癌@结合全血细胞计数，结果有时可提示癌症是否扩散至了骨或肝脏。';

MERGE (s:Entity {name: '转移性乳腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '全血细胞计数'})
  SET o.type = '检查';
MATCH (s:Entity {name: '转移性乳腺癌'}), (o:Entity {name: '全血细胞计数'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '转移性乳腺癌@### 肝功能检查 (LFT) 检查 结果 检查 所有转移性乳腺癌患者均需记录基础值并定期随访。 转移性乳腺癌@结合全血细胞计数，结果有时可提示癌症是否扩散至了骨或肝脏。';

MERGE (s:Entity {name: '转移性乳腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '骨'})
  SET o.type = '部位';
MATCH (s:Entity {name: '转移性乳腺癌'}), (o:Entity {name: '骨'})
MERGE (s)-[r:RELATED_TO {predicate: '转移部位'}]->(o) SET r.source = '转移性乳腺癌@### 肝功能检查 (LFT) 检查 结果 检查 所有转移性乳腺癌患者均需记录基础值并定期随访。 转移性乳腺癌@结合全血细胞计数，结果有时可提示癌症是否扩散至了骨或肝脏。';

MERGE (s:Entity {name: '转移性乳腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝脏'})
  SET o.type = '部位';
MATCH (s:Entity {name: '转移性乳腺癌'}), (o:Entity {name: '肝脏'})
MERGE (s)-[r:RELATED_TO {predicate: '转移部位'}]->(o) SET r.source = '转移性乳腺癌@### 肝功能检查 (LFT) 检查 结果 检查 所有转移性乳腺癌患者均需记录基础值并定期随访。 转移性乳腺癌@结合全血细胞计数，结果有时可提示癌症是否扩散至了骨或肝脏。';

MERGE (s:Entity {name: '转移性乳腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '定期随访'})
  SET o.type = '检查';
MATCH (s:Entity {name: '转移性乳腺癌'}), (o:Entity {name: '定期随访'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '转移性乳腺癌@### 肝功能检查 (LFT) 检查 结果 检查 所有转移性乳腺癌患者均需记录基础值并定期随访。 转移性乳腺癌@结合全血细胞计数，结果有时可提示癌症是否扩散至了骨或肝脏。';

MERGE (s:Entity {name: '急性细菌性痢疾'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '夏季'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '急性细菌性痢疾'}), (o:Entity {name: '夏季'})
MERGE (s)-[r:RELATED_TO {predicate: '多发季节'}]->(o) SET r.source = '（三）急性细菌性痢疾 细菌性痢疾夏季发病率高，患儿多有不洁食物史，潜伏期24～72小时。粪便培养可确诊。';

MERGE (s:Entity {name: '急性细菌性痢疾'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '不洁食物史'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '急性细菌性痢疾'}), (o:Entity {name: '不洁食物史'})
MERGE (s)-[r:RELATED_TO {predicate: '病史'}]->(o) SET r.source = '（三）急性细菌性痢疾 细菌性痢疾夏季发病率高，患儿多有不洁食物史，潜伏期24～72小时。粪便培养可确诊。';

MERGE (s:Entity {name: '急性细菌性痢疾'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '粪便培养'})
  SET o.type = '检查';
MATCH (s:Entity {name: '急性细菌性痢疾'}), (o:Entity {name: '粪便培养'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '（三）急性细菌性痢疾 细菌性痢疾夏季发病率高，患儿多有不洁食物史，潜伏期24～72小时。粪便培养可确诊。';

MERGE (s:Entity {name: '细菌性痢疾'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性细菌性痢疾'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '细菌性痢疾'}), (o:Entity {name: '急性细菌性痢疾'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '（三）急性细菌性痢疾 细菌性痢疾夏季发病率高，患儿多有不洁食物史，潜伏期24～72小时。粪便培养可确诊。';

MERGE (s:Entity {name: '细菌性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '大肠杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '细菌性脑膜炎'}), (o:Entity {name: '大肠杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '细菌性脑膜炎@### 确诊感染：大肠杆菌和其他革兰氏阴性肠杆菌 查看全部   首选 –   抗生素靶向治疗 #### 第一选择 [ 庆大霉素 ](/druglink?dd=MARTINDALE) open_in_new : 新生儿：';

MERGE (s:Entity {name: '细菌性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '革兰氏阴性肠杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '细菌性脑膜炎'}), (o:Entity {name: '革兰氏阴性肠杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '细菌性脑膜炎@### 确诊感染：大肠杆菌和其他革兰氏阴性肠杆菌 查看全部   首选 –   抗生素靶向治疗 #### 第一选择 [ 庆大霉素 ](/druglink?dd=MARTINDALE) open_in_new : 新生儿：';

MERGE (s:Entity {name: '细菌性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗生素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '细菌性脑膜炎'}), (o:Entity {name: '抗生素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '细菌性脑膜炎@### 确诊感染：大肠杆菌和其他革兰氏阴性肠杆菌 查看全部   首选 –   抗生素靶向治疗 #### 第一选择 [ 庆大霉素 ](/druglink?dd=MARTINDALE) open_in_new : 新生儿：';

MERGE (s:Entity {name: '细菌性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '庆大霉素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '细菌性脑膜炎'}), (o:Entity {name: '庆大霉素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '细菌性脑膜炎@### 确诊感染：大肠杆菌和其他革兰氏阴性肠杆菌 查看全部   首选 –   抗生素靶向治疗 #### 第一选择 [ 庆大霉素 ](/druglink?dd=MARTINDALE) open_in_new : 新生儿：';

MERGE (s:Entity {name: '中耳炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '较低的社会经济状况'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '中耳炎'}), (o:Entity {name: '较低的社会经济状况'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '中耳炎@### 较低的社会经济状况 观察研究发现此危险因素与急性中耳炎发病有关。';

MERGE (s:Entity {name: '中耳炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性中耳炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '中耳炎'}), (o:Entity {name: '急性中耳炎'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '中耳炎@### 较低的社会经济状况 观察研究发现此危险因素与急性中耳炎发病有关。';

MERGE (s:Entity {name: 'RDS'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '早产'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'RDS'}), (o:Entity {name: '早产'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: 'RDS'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胎龄'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'RDS'}), (o:Entity {name: '胎龄'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: 'RDS'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'PS合成及分泌量'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'RDS'}), (o:Entity {name: 'PS合成及分泌量'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: 'RDS'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '糖尿病母亲婴儿'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: 'RDS'}), (o:Entity {name: '糖尿病母亲婴儿'})
MERGE (s)-[r:RELATED_TO {predicate: '多发群体'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: '糖尿病母亲婴儿'})
  SET s.type = '流行病学';
MERGE (o:Entity {name: 'infant of diabetic mother'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '糖尿病母亲婴儿'}), (o:Entity {name: 'infant of diabetic mother'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: '糖尿病母亲婴儿'})
  SET s.type = '流行病学';
MERGE (o:Entity {name: 'IDM'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '糖尿病母亲婴儿'}), (o:Entity {name: 'IDM'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: '糖尿病母亲婴儿'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '比正常增加5 ~6倍'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '糖尿病母亲婴儿'}), (o:Entity {name: '比正常增加5 ~6倍'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '早产 胎龄越小，PS合成及分泌量也越低，RDS的发生率越高。 糖尿病母亲婴儿（infant of diabetic mother, IDM ) 也易发生此病，RDS发生率比正常增加5 ~6倍。';

MERGE (s:Entity {name: '重型再障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性再障'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '重型再障'}), (o:Entity {name: '急性再障'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '（一）急性再障 （重型再障）的治疗 1.去除病因 对一切可疑的致病因素，均应立即停止接触、应用。 （5）大剂量丙种球蛋白。';

MERGE (s:Entity {name: '急性再障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '大剂量丙种球蛋白'})
  SET o.type = '药物';
MATCH (s:Entity {name: '急性再障'}), (o:Entity {name: '大剂量丙种球蛋白'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '（一）急性再障 （重型再障）的治疗 1.去除病因 对一切可疑的致病因素，均应立即停止接触、应用。 （5）大剂量丙种球蛋白。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '他喷他多'})
  SET o.type = '药物';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '他喷他多'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '羟考酮'})
  SET o.type = '药物';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '羟考酮'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '下腰痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '下腰痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '骨性关节炎疼痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '骨性关节炎疼痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '髋'})
  SET o.type = '部位';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '髋'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '膝'})
  SET o.type = '部位';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '膝'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'III期'})
  SET o.type = '其他';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: 'III期'})
MERGE (s)-[r:RELATED_TO {predicate: '阶段'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '骨性关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '随机双盲试验'})
  SET o.type = '检查';
MATCH (s:Entity {name: '骨性关节炎'}), (o:Entity {name: '随机双盲试验'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '骨性关节炎@在III期随机双盲试验中比较了878名有下腰痛或骨性关节炎疼痛（髋或膝）超过90天的患者对他喷他多和羟考酮快速释放的反应。';

MERGE (s:Entity {name: '儿童偏头痛'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '阿米替林'})
  SET o.type = '药物';
MATCH (s:Entity {name: '儿童偏头痛'}), (o:Entity {name: '阿米替林'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '儿童偏头痛@发作逐渐减少可能证明其他药物的作用：可选择的药物有阿米替林、丙戊酸、卡马西平和加巴喷丁，尽管每种药物开始使用都需要主任医生批准并且要严密监测不良反应。';

MERGE (s:Entity {name: '儿童偏头痛'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '丙戊酸'})
  SET o.type = '药物';
MATCH (s:Entity {name: '儿童偏头痛'}), (o:Entity {name: '丙戊酸'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '儿童偏头痛@发作逐渐减少可能证明其他药物的作用：可选择的药物有阿米替林、丙戊酸、卡马西平和加巴喷丁，尽管每种药物开始使用都需要主任医生批准并且要严密监测不良反应。';

MERGE (s:Entity {name: '儿童偏头痛'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '卡马西平'})
  SET o.type = '药物';
MATCH (s:Entity {name: '儿童偏头痛'}), (o:Entity {name: '卡马西平'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '儿童偏头痛@发作逐渐减少可能证明其他药物的作用：可选择的药物有阿米替林、丙戊酸、卡马西平和加巴喷丁，尽管每种药物开始使用都需要主任医生批准并且要严密监测不良反应。';

MERGE (s:Entity {name: '儿童偏头痛'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '加巴喷丁'})
  SET o.type = '药物';
MATCH (s:Entity {name: '儿童偏头痛'}), (o:Entity {name: '加巴喷丁'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '儿童偏头痛@发作逐渐减少可能证明其他药物的作用：可选择的药物有阿米替林、丙戊酸、卡马西平和加巴喷丁，尽管每种药物开始使用都需要主任医生批准并且要严密监测不良反应。';

MERGE (s:Entity {name: '毒蛇咬伤中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '亚甲蓝'})
  SET o.type = '药物';
MATCH (s:Entity {name: '毒蛇咬伤中毒'}), (o:Entity {name: '亚甲蓝'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '1%亚甲蓝以每次0. 1～0. 2ml/kg，稀释后缓慢推注，或维生素C以0. 5～1g用葡萄糖20ml稀释后静注；气促者给予吸氧。 19.毒蛇咬伤中毒 伤肢制动，以减慢毒素扩散；肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟';

MERGE (s:Entity {name: '毒蛇咬伤中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '维生素C'})
  SET o.type = '药物';
MATCH (s:Entity {name: '毒蛇咬伤中毒'}), (o:Entity {name: '维生素C'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '1%亚甲蓝以每次0. 1～0. 2ml/kg，稀释后缓慢推注，或维生素C以0. 5～1g用葡萄糖20ml稀释后静注；气促者给予吸氧。 19.毒蛇咬伤中毒 伤肢制动，以减慢毒素扩散；肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟';

MERGE (s:Entity {name: '毒蛇咬伤中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '气促'})
  SET o.type = '症状';
MATCH (s:Entity {name: '毒蛇咬伤中毒'}), (o:Entity {name: '气促'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '1%亚甲蓝以每次0. 1～0. 2ml/kg，稀释后缓慢推注，或维生素C以0. 5～1g用葡萄糖20ml稀释后静注；气促者给予吸氧。 19.毒蛇咬伤中毒 伤肢制动，以减慢毒素扩散；肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟';

MERGE (s:Entity {name: '毒蛇咬伤中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '吸氧'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '毒蛇咬伤中毒'}), (o:Entity {name: '吸氧'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '1%亚甲蓝以每次0. 1～0. 2ml/kg，稀释后缓慢推注，或维生素C以0. 5～1g用葡萄糖20ml稀释后静注；气促者给予吸氧。 19.毒蛇咬伤中毒 伤肢制动，以减慢毒素扩散；肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟';

MERGE (s:Entity {name: '毒蛇咬伤中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '伤肢制动'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '毒蛇咬伤中毒'}), (o:Entity {name: '伤肢制动'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '1%亚甲蓝以每次0. 1～0. 2ml/kg，稀释后缓慢推注，或维生素C以0. 5～1g用葡萄糖20ml稀释后静注；气促者给予吸氧。 19.毒蛇咬伤中毒 伤肢制动，以减慢毒素扩散；肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟';

MERGE (s:Entity {name: '毒蛇咬伤中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟放松1 ～2分钟'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '毒蛇咬伤中毒'}), (o:Entity {name: '肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟放松1 ～2分钟'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '1%亚甲蓝以每次0. 1～0. 2ml/kg，稀释后缓慢推注，或维生素C以0. 5～1g用葡萄糖20ml稀释后静注；气促者给予吸氧。 19.毒蛇咬伤中毒 伤肢制动，以减慢毒素扩散；肢体伤口的近心端2～3cm处用绳或布条缚扎，每15～30分钟';

MERGE (s:Entity {name: '脑炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '癫痫'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '脑炎'}), (o:Entity {name: '癫痫'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '脑炎@脑炎后 5 年内癫痫的发病率为 10%，20 年内为 20%。';

MERGE (s:Entity {name: '脑炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '10%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '脑炎'}), (o:Entity {name: '10%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '脑炎@脑炎后 5 年内癫痫的发病率为 10%，20 年内为 20%。';

MERGE (s:Entity {name: '脑炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '20%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '脑炎'}), (o:Entity {name: '20%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '脑炎@脑炎后 5 年内癫痫的发病率为 10%，20 年内为 20%。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'infective endocarditis'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: 'infective endocarditis'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'IE'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: 'IE'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '链球菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '链球菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '葡萄球菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '葡萄球菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '真菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '真菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '衣原体'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '衣原体'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '立克次体'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '立克次体'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '病毒'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '病毒'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾小球肾炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '肾小球肾炎'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Osler结节'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: 'Osler结节'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Roth斑'})
  SET o.type = '症状';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: 'Roth斑'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: '感染性心内膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '类风湿因子阳性'})
  SET o.type = '症状';
MATCH (s:Entity {name: '感染性心内膜炎'}), (o:Entity {name: '类风湿因子阳性'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '感染性心内膜炎（infective endocarditis，IE ) 80%以上由链球菌和葡萄球菌所致,其他尚有真菌、衣原体、立克次体及病毒等。 免疫学征象:肾小球肾炎、Osler结节、Roth斑、类风湿因子阳性。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '白人族裔'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '白人族裔'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '高龄孕妇'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '高龄孕妇'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '多胎妊娠'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '多胎妊娠'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肥胖'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '肥胖'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '慢性高血压'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '慢性高血压'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '糖尿病'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '糖尿病'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '自身免疫性疾病'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '自身免疫性疾病'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胎盘形成异常'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '胎盘形成异常'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'HELLP 综合征的妊娠'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: 'HELLP 综合征的妊娠'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: 'HELLP 综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '先兆子痫'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'HELLP 综合征'}), (o:Entity {name: '先兆子痫'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: '胎盘形成异常'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '葡萄胎妊娠'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胎盘形成异常'}), (o:Entity {name: '葡萄胎妊娠'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = 'HELLP 综合征@### 病史 关键危险因素包括白人族裔、高龄孕妇、多胎妊娠、肥胖、慢性高血压、糖尿病、自身免疫性疾病、胎盘形成异常（例如葡萄胎妊娠）、既往发生先兆子痫伴有或不伴有 HELLP 综合征的妊娠。';

MERGE (s:Entity {name: '溶血性贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'hemolytic anemia'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溶血性贫血'}), (o:Entity {name: 'hemolytic anemia'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '溶血性贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '红细胞数和血红蛋白含量减少'})
  SET o.type = '症状';
MATCH (s:Entity {name: '溶血性贫血'}), (o:Entity {name: '红细胞数和血红蛋白含量减少'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '溶血性贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '红细胞寿命的缩短和过早地破坏'})
  SET o.type = '症状';
MATCH (s:Entity {name: '溶血性贫血'}), (o:Entity {name: '红细胞寿命的缩短和过早地破坏'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '溶血性贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '轻度溶血'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溶血性贫血'}), (o:Entity {name: '轻度溶血'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '溶血性贫血'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '贫血'}), (o:Entity {name: '溶血性贫血'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '溶血性贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '红细胞的破坏超过了骨髓生血功能的代偿能力'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '溶血性贫血'}), (o:Entity {name: '红细胞的破坏超过了骨髓生血功能的代偿能力'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '溶血性贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '红细胞的破坏超过了骨髓造血的代偿能力'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '溶血性贫血'}), (o:Entity {name: '红细胞的破坏超过了骨髓造血的代偿能力'})
MERGE (s)-[r:RELATED_TO {predicate: '病理生理'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '轻度溶血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '外周血中的红细胞数能被骨髓造血功能的增加所完全代偿'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '轻度溶血'}), (o:Entity {name: '外周血中的红细胞数能被骨髓造血功能的增加所完全代偿'})
MERGE (s)-[r:RELATED_TO {predicate: '病理生理'}]->(o) SET r.source = '第六节 溶血性贫血 一、总 论 溶血性贫血（hemolytic anemia）是由多种病因引起红细胞寿命的缩短和过早地破坏，且红细胞的破坏超过了骨髓生血功能的代偿能力而发生循环中红细胞数和血红蛋白含量减少的一种贫血。因此，如轻度溶血时，外周';

MERGE (s:Entity {name: '急性膀胱炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '25%-35%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '急性膀胱炎'}), (o:Entity {name: '25%-35%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '急性膀胱炎@### 泌尿系感染特点 25%-35% 初发泌尿系感染的女性在接下来 3 到 6 个月内会再次感染。';

MERGE (s:Entity {name: '泌尿系感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性膀胱炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '泌尿系感染'}), (o:Entity {name: '急性膀胱炎'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '急性膀胱炎@### 泌尿系感染特点 25%-35% 初发泌尿系感染的女性在接下来 3 到 6 个月内会再次感染。';

MERGE (s:Entity {name: '急性膀胱炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '初发泌尿系感染的女性在接下来 3 到 6 个月内会再次感染'})
  SET o.type = '预后';
MATCH (s:Entity {name: '急性膀胱炎'}), (o:Entity {name: '初发泌尿系感染的女性在接下来 3 到 6 个月内会再次感染'})
MERGE (s)-[r:RELATED_TO {predicate: '预后状况'}]->(o) SET r.source = '急性膀胱炎@### 泌尿系感染特点 25%-35% 初发泌尿系感染的女性在接下来 3 到 6 个月内会再次感染。';

MERGE (s:Entity {name: '类癌综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '栓塞术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '类癌综合征'}), (o:Entity {name: '栓塞术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '类癌综合征@ 栓塞术使用可以重复，但其有效性随着反复操作而逐渐下降。';

MERGE (s:Entity {name: '疟疾感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '氯喹'})
  SET o.type = '药物';
MATCH (s:Entity {name: '疟疾感染'}), (o:Entity {name: '氯喹'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '疟疾感染@应当使用氯喹（首选）或羟氯喹治疗感染，共 3 次给药。';

MERGE (s:Entity {name: '疟疾感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '羟氯喹'})
  SET o.type = '药物';
MATCH (s:Entity {name: '疟疾感染'}), (o:Entity {name: '羟氯喹'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '疟疾感染@应当使用氯喹（首选）或羟氯喹治疗感染，共 3 次给药。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'IVIG'})
  SET o.type = '药物';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: 'IVIG'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '部分患儿对IVIG输注后无效，可重复使用1次，或选择使用糖皮质激素。 【预后】 川崎病为自限性疾病，多数预后良好。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '糖皮质激素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '糖皮质激素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '部分患儿对IVIG输注后无效，可重复使用1次，或选择使用糖皮质激素。 【预后】 川崎病为自限性疾病，多数预后良好。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '良好'})
  SET o.type = '预后';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '良好'})
MERGE (s)-[r:RELATED_TO {predicate: '预后状况'}]->(o) SET r.source = '部分患儿对IVIG输注后无效，可重复使用1次，或选择使用糖皮质激素。 【预后】 川崎病为自限性疾病，多数预后良好。';

MERGE (s:Entity {name: '急性髓性白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血清钙、钾、磷、尿酸和乳酸水平可能升高'})
  SET o.type = '症状';
MATCH (s:Entity {name: '急性髓性白血病'}), (o:Entity {name: '血清钙、钾、磷、尿酸和乳酸水平可能升高'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '急性髓性白血病@结果 可能正常；血清钙、钾、磷、尿酸和乳酸水平可能升高；血清钙可能降低 ### 肾功能 检查 结果 检查 是一项基线检查，并在整个治疗过程中持续监测。';

MERGE (s:Entity {name: '急性髓性白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血清钙可能降低'})
  SET o.type = '症状';
MATCH (s:Entity {name: '急性髓性白血病'}), (o:Entity {name: '血清钙可能降低'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '急性髓性白血病@结果 可能正常；血清钙、钾、磷、尿酸和乳酸水平可能升高；血清钙可能降低 ### 肾功能 检查 结果 检查 是一项基线检查，并在整个治疗过程中持续监测。';

MERGE (s:Entity {name: '急性髓性白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾功能'})
  SET o.type = '检查';
MATCH (s:Entity {name: '急性髓性白血病'}), (o:Entity {name: '肾功能'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '急性髓性白血病@结果 可能正常；血清钙、钾、磷、尿酸和乳酸水平可能升高；血清钙可能降低 ### 肾功能 检查 结果 检查 是一项基线检查，并在整个治疗过程中持续监测。';

MERGE (s:Entity {name: '急性髓性白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '基线检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '急性髓性白血病'}), (o:Entity {name: '基线检查'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '急性髓性白血病@结果 可能正常；血清钙、钾、磷、尿酸和乳酸水平可能升高；血清钙可能降低 ### 肾功能 检查 结果 检查 是一项基线检查，并在整个治疗过程中持续监测。';

MERGE (s:Entity {name: '慢性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'CLL'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性淋巴细胞白血病'}), (o:Entity {name: 'CLL'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '慢性淋巴细胞白血病@检查 套细胞淋巴瘤、滤泡性淋巴瘤和淋巴浆细胞性白血病细胞可能模仿 CLL 形态。 慢性淋巴细胞白血病@CLL 细胞在流式细胞术检查中对 CD5 和 CD19 呈阳性。';

MERGE (s:Entity {name: '慢性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '流式细胞术'})
  SET o.type = '检查';
MATCH (s:Entity {name: '慢性淋巴细胞白血病'}), (o:Entity {name: '流式细胞术'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '慢性淋巴细胞白血病@检查 套细胞淋巴瘤、滤泡性淋巴瘤和淋巴浆细胞性白血病细胞可能模仿 CLL 形态。 慢性淋巴细胞白血病@CLL 细胞在流式细胞术检查中对 CD5 和 CD19 呈阳性。';

MERGE (s:Entity {name: '慢性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '套细胞淋巴瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性淋巴细胞白血病'}), (o:Entity {name: '套细胞淋巴瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '慢性淋巴细胞白血病@检查 套细胞淋巴瘤、滤泡性淋巴瘤和淋巴浆细胞性白血病细胞可能模仿 CLL 形态。 慢性淋巴细胞白血病@CLL 细胞在流式细胞术检查中对 CD5 和 CD19 呈阳性。';

MERGE (s:Entity {name: '慢性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '淋巴浆细胞性白血病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性淋巴细胞白血病'}), (o:Entity {name: '淋巴浆细胞性白血病'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '慢性淋巴细胞白血病@检查 套细胞淋巴瘤、滤泡性淋巴瘤和淋巴浆细胞性白血病细胞可能模仿 CLL 形态。 慢性淋巴细胞白血病@CLL 细胞在流式细胞术检查中对 CD5 和 CD19 呈阳性。';

MERGE (s:Entity {name: '慢性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '滤泡性淋巴瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性淋巴细胞白血病'}), (o:Entity {name: '滤泡性淋巴瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '慢性淋巴细胞白血病@检查 套细胞淋巴瘤、滤泡性淋巴瘤和淋巴浆细胞性白血病细胞可能模仿 CLL 形态。 慢性淋巴细胞白血病@CLL 细胞在流式细胞术检查中对 CD5 和 CD19 呈阳性。';

MERGE (s:Entity {name: '慢性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'CD5 和 CD19 呈阳性'})
  SET o.type = '症状';
MATCH (s:Entity {name: '慢性淋巴细胞白血病'}), (o:Entity {name: 'CD5 和 CD19 呈阳性'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '慢性淋巴细胞白血病@检查 套细胞淋巴瘤、滤泡性淋巴瘤和淋巴浆细胞性白血病细胞可能模仿 CLL 形态。 慢性淋巴细胞白血病@CLL 细胞在流式细胞术检查中对 CD5 和 CD19 呈阳性。';

MERGE (s:Entity {name: '军团菌肺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'legionaires disease'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '军团菌肺炎'}), (o:Entity {name: 'legionaires disease'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '军团菌肺炎（legionaires disease）是一种严重的多系统损害性疾病，主要表现为发热和呼吸道症状。可加用利福平。';

MERGE (s:Entity {name: '军团菌肺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '发热'})
  SET o.type = '症状';
MATCH (s:Entity {name: '军团菌肺炎'}), (o:Entity {name: '发热'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '军团菌肺炎（legionaires disease）是一种严重的多系统损害性疾病，主要表现为发热和呼吸道症状。可加用利福平。';

MERGE (s:Entity {name: '军团菌肺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸道症状'})
  SET o.type = '症状';
MATCH (s:Entity {name: '军团菌肺炎'}), (o:Entity {name: '呼吸道症状'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '军团菌肺炎（legionaires disease）是一种严重的多系统损害性疾病，主要表现为发热和呼吸道症状。可加用利福平。';

MERGE (s:Entity {name: '军团菌肺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '利福平'})
  SET o.type = '药物';
MATCH (s:Entity {name: '军团菌肺炎'}), (o:Entity {name: '利福平'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '军团菌肺炎（legionaires disease）是一种严重的多系统损害性疾病，主要表现为发热和呼吸道症状。可加用利福平。';

MERGE (s:Entity {name: '多系统损害性疾病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '军团菌肺炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '多系统损害性疾病'}), (o:Entity {name: '军团菌肺炎'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '军团菌肺炎（legionaires disease）是一种严重的多系统损害性疾病，主要表现为发热和呼吸道症状。可加用利福平。';

MERGE (s:Entity {name: '胃炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'PPI'})
  SET o.type = '药物';
MATCH (s:Entity {name: '胃炎'}), (o:Entity {name: 'PPI'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '胃炎@通常的推荐意见是，根除治疗后，PPI停药7-14天，抗生素和铋剂停药至少28天可以采用尿素呼吸试验检测 _幽门螺杆菌_ 根除效果。';

MERGE (s:Entity {name: '胃炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗生素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '胃炎'}), (o:Entity {name: '抗生素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '胃炎@通常的推荐意见是，根除治疗后，PPI停药7-14天，抗生素和铋剂停药至少28天可以采用尿素呼吸试验检测 _幽门螺杆菌_ 根除效果。';

MERGE (s:Entity {name: '胃炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '铋剂'})
  SET o.type = '药物';
MATCH (s:Entity {name: '胃炎'}), (o:Entity {name: '铋剂'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '胃炎@通常的推荐意见是，根除治疗后，PPI停药7-14天，抗生素和铋剂停药至少28天可以采用尿素呼吸试验检测 _幽门螺杆菌_ 根除效果。';

MERGE (s:Entity {name: '胃炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '尿素呼吸试验'})
  SET o.type = '检查';
MATCH (s:Entity {name: '胃炎'}), (o:Entity {name: '尿素呼吸试验'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '胃炎@通常的推荐意见是，根除治疗后，PPI停药7-14天，抗生素和铋剂停药至少28天可以采用尿素呼吸试验检测 _幽门螺杆菌_ 根除效果。';

MERGE (s:Entity {name: '胃炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '幽门螺杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '胃炎'}), (o:Entity {name: '幽门螺杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '胃炎@通常的推荐意见是，根除治疗后，PPI停药7-14天，抗生素和铋剂停药至少28天可以采用尿素呼吸试验检测 _幽门螺杆菌_ 根除效果。';

MERGE (s:Entity {name: '慢性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '无症状性髓内脂肪坏死'})
  SET o.type = '症状';
MATCH (s:Entity {name: '慢性胰腺炎'}), (o:Entity {name: '无症状性髓内脂肪坏死'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '慢性胰腺炎@约5%的胰腺炎患者会出现无症状性髓内脂肪坏死。';

MERGE (s:Entity {name: '胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '慢性胰腺炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胰腺炎'}), (o:Entity {name: '慢性胰腺炎'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '慢性胰腺炎@约5%的胰腺炎患者会出现无症状性髓内脂肪坏死。';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'acute liver failure'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: 'acute liver failure'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'ALF'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: 'ALF'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '凝血机制障碍'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: '凝血机制障碍'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（症状）'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '黄疸'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: '黄疸'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（症状）'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝性脑病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: '肝性脑病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（症状）'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: '肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿'})
MERGE (s)-[r:RELATED_TO {predicate: '发病机制'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '腹水'})
  SET o.type = '症状';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: '腹水'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '急性肝功能衰竭'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '原无肝病者'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '急性肝功能衰竭'}), (o:Entity {name: '原无肝病者'})
MERGE (s)-[r:RELATED_TO {predicate: '多发群体'}]->(o) SET r.source = '第五章 急性肝功能衰竭 【概述】 急性肝功能衰竭（acute liver failure，ALF）一般是指原无肝病者在短时间内发生的因肝细胞大量坏死导致合成、解毒、排泄和生物转化等功能发生严重障碍或失代偿，出现以凝血机制障碍和黄疸、肝性脑病';

MERGE (s:Entity {name: '失眠症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '老年人常见的健康并发症'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '失眠症'}), (o:Entity {name: '老年人常见的健康并发症'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '失眠症@### 年龄增长 失眠症报告随年龄增加而增加，但它似乎与老年人常见的健康并发症而不是衰老进程相关。';

MERGE (s:Entity {name: '失眠症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '年龄增长'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '失眠症'}), (o:Entity {name: '年龄增长'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '失眠症@### 年龄增长 失眠症报告随年龄增加而增加，但它似乎与老年人常见的健康并发症而不是衰老进程相关。';

MERGE (s:Entity {name: '心肌炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Swan－Ganz气囊漂浮导管'})
  SET o.type = '检查';
MATCH (s:Entity {name: '心肌炎'}), (o:Entity {name: 'Swan－Ganz气囊漂浮导管'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '心肌炎@应用Swan－Ganz气囊漂浮导管，进行侵袭性血流动力学监测，可辨别发生低血压的病因，并为是否使用这些药物提供信息。';

MERGE (s:Entity {name: '心肌炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '低血压'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '心肌炎'}), (o:Entity {name: '低血压'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '心肌炎@应用Swan－Ganz气囊漂浮导管，进行侵袭性血流动力学监测，可辨别发生低血压的病因，并为是否使用这些药物提供信息。';

MERGE (s:Entity {name: '低血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '侵袭性血流动力学监测'})
  SET o.type = '检查';
MATCH (s:Entity {name: '低血压'}), (o:Entity {name: '侵袭性血流动力学监测'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '心肌炎@应用Swan－Ganz气囊漂浮导管，进行侵袭性血流动力学监测，可辨别发生低血压的病因，并为是否使用这些药物提供信息。';

MERGE (s:Entity {name: '急性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '骨髓活检'})
  SET o.type = '检查';
MATCH (s:Entity {name: '急性淋巴细胞白血病'}), (o:Entity {name: '骨髓活检'})
MERGE (s)-[r:RELATED_TO {predicate: '组织学检查'}]->(o) SET r.source = '急性淋巴细胞白血病@ 确诊需进行骨髓活检。急性淋巴细胞白血病@骨髓中原始细胞大于25%可明确急性淋巴细胞白血病（ALL）的诊断。';

MERGE (s:Entity {name: '急性淋巴细胞白血病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '骨髓中原始细胞大于25%'})
  SET o.type = '症状';
MATCH (s:Entity {name: '急性淋巴细胞白血病'}), (o:Entity {name: '骨髓中原始细胞大于25%'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '急性淋巴细胞白血病@ 确诊需进行骨髓活检。急性淋巴细胞白血病@骨髓中原始细胞大于25%可明确急性淋巴细胞白血病（ALL）的诊断。';

MERGE (s:Entity {name: 'ALL'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性淋巴细胞白血病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'ALL'}), (o:Entity {name: '急性淋巴细胞白血病'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '急性淋巴细胞白血病@ 确诊需进行骨髓活检。急性淋巴细胞白血病@骨髓中原始细胞大于25%可明确急性淋巴细胞白血病（ALL）的诊断。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '遗传因素'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '遗传因素'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑内致痫性损伤因素'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '脑内致痫性损伤因素'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '诱发性因素'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '诱发性因素'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '原发性癫痫'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '原发性癫痫'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '全身性癫痫'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '全身性癫痫'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '部分性癫痫'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '部分性癫痫'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '原发性癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '全身性发作'})
  SET o.type = '症状';
MATCH (s:Entity {name: '原发性癫痫'}), (o:Entity {name: '全身性发作'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '原发性癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '部分性发作'})
  SET o.type = '症状';
MATCH (s:Entity {name: '原发性癫痫'}), (o:Entity {name: '部分性发作'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【病因】 癫痫的病因复杂多样，构成癫痫发作的因素包括遗传因素、脑内致痫性损伤因素以及诱发性因素等，不同的年龄往往有不同的病因范围。原发性癫痫可表现为全身性发作或部分性发作，但全身性癫痫的遗传性因素高于部分性癫痫。';

MERGE (s:Entity {name: '2型糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '1型'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '2型糖尿病'}), (o:Entity {name: '1型'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '稳定型缺血性心脏疾病@强化血糖控制能降低1型和2型糖尿病患者微血管并发症的发病率，包括视网膜病、肾病和神经病变。';

MERGE (s:Entity {name: '2型糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '视网膜病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '2型糖尿病'}), (o:Entity {name: '视网膜病'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '稳定型缺血性心脏疾病@强化血糖控制能降低1型和2型糖尿病患者微血管并发症的发病率，包括视网膜病、肾病和神经病变。';

MERGE (s:Entity {name: '2型糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '2型糖尿病'}), (o:Entity {name: '肾病'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '稳定型缺血性心脏疾病@强化血糖控制能降低1型和2型糖尿病患者微血管并发症的发病率，包括视网膜病、肾病和神经病变。';

MERGE (s:Entity {name: '2型糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '神经病变'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '2型糖尿病'}), (o:Entity {name: '神经病变'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '稳定型缺血性心脏疾病@强化血糖控制能降低1型和2型糖尿病患者微血管并发症的发病率，包括视网膜病、肾病和神经病变。';

MERGE (s:Entity {name: '2型糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '强化血糖控制'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '2型糖尿病'}), (o:Entity {name: '强化血糖控制'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '稳定型缺血性心脏疾病@强化血糖控制能降低1型和2型糖尿病患者微血管并发症的发病率，包括视网膜病、肾病和神经病变。';

MERGE (s:Entity {name: '稳定型缺血性心脏疾病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '2型糖尿病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '稳定型缺血性心脏疾病'}), (o:Entity {name: '2型糖尿病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '稳定型缺血性心脏疾病@强化血糖控制能降低1型和2型糖尿病患者微血管并发症的发病率，包括视网膜病、肾病和神经病变。';

MERGE (s:Entity {name: '唇腭裂'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '产前超声'})
  SET o.type = '检查';
MATCH (s:Entity {name: '唇腭裂'}), (o:Entity {name: '产前超声'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '唇腭裂@### 积极的产前超声 在大约妊娠18周时可以通过常规产前超声识别有无唇裂的存在。';

MERGE (s:Entity {name: '唇腭裂'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '唇裂'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '唇腭裂'}), (o:Entity {name: '唇裂'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '唇腭裂@### 积极的产前超声 在大约妊娠18周时可以通过常规产前超声识别有无唇裂的存在。';

MERGE (s:Entity {name: '白内障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '黄斑水肿'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '白内障'}), (o:Entity {name: '黄斑水肿'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '白内障@玻璃体的牵拉可以增加白内障术后发生黄斑水肿的风险和/或增加视网膜裂孔或视网膜脱离的风险。';

MERGE (s:Entity {name: '白内障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '视网膜裂孔'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '白内障'}), (o:Entity {name: '视网膜裂孔'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '白内障@玻璃体的牵拉可以增加白内障术后发生黄斑水肿的风险和/或增加视网膜裂孔或视网膜脱离的风险。';

MERGE (s:Entity {name: '白内障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '视网膜脱离'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '白内障'}), (o:Entity {name: '视网膜脱离'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '白内障@玻璃体的牵拉可以增加白内障术后发生黄斑水肿的风险和/或增加视网膜裂孔或视网膜脱离的风险。';

MERGE (s:Entity {name: '白内障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '玻璃体的牵拉'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '白内障'}), (o:Entity {name: '玻璃体的牵拉'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '白内障@玻璃体的牵拉可以增加白内障术后发生黄斑水肿的风险和/或增加视网膜裂孔或视网膜脱离的风险。';

MERGE (s:Entity {name: '白内障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '白内障术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '白内障'}), (o:Entity {name: '白内障术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '白内障@玻璃体的牵拉可以增加白内障术后发生黄斑水肿的风险和/或增加视网膜裂孔或视网膜脱离的风险。';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'tuberculous meningitis'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: 'tuberculous meningitis'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '小儿结核病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '结核性脑膜炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '小儿结核病'}), (o:Entity {name: '结核性脑膜炎'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑脊液压力增高'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '脑脊液压力增高'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '外观无色透明'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '外观无色透明'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呈毛玻璃样'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '呈毛玻璃样'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '蛛网膜下腔阻塞'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '蛛网膜下腔阻塞'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呈黄色'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '呈黄色'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑脊液中可有蜘蛛网状薄膜形成'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '脑脊液中可有蜘蛛网状薄膜形成'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗酸染色'})
  SET o.type = '检查';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '抗酸染色'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '结核性脑膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '结核分枝杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '结核性脑膜炎'}), (o:Entity {name: '结核分枝杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '结核性脑膜炎（tuberculous meningitis)，是小儿结核病中最严重的类型。 常规检查:脑脊液压力增高，外观无色透明或呈毛玻璃样,蛛网膜下腔阻塞时，可呈黄色,静置 12 ~ 24小时后’脑脊液中可有蜘蛛网状薄膜形成，取之涂片进';

MERGE (s:Entity {name: '肥厚型心肌病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '房颤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肥厚型心肌病'}), (o:Entity {name: '房颤'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肥厚型心肌病@胺碘酮是最有效的预防房颤复发的药物。';

MERGE (s:Entity {name: '房颤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胺碘酮'})
  SET o.type = '其他';
MATCH (s:Entity {name: '房颤'}), (o:Entity {name: '胺碘酮'})
MERGE (s)-[r:RELATED_TO {predicate: '预防'}]->(o) SET r.source = '肥厚型心肌病@胺碘酮是最有效的预防房颤复发的药物。';

MERGE (s:Entity {name: '唇腭裂'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '腭瘘'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '唇腭裂'}), (o:Entity {name: '腭瘘'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '唇腭裂@助听器通常要在手术后咨询耳鼻喉科和听力学家。唇腭裂@ ### 腭瘘 | 存在差异 | 低 大约 10% 至 20% 颚成形术发生腭瘘。';

MERGE (s:Entity {name: '唇腭裂'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '耳鼻喉科'})
  SET o.type = '其他';
MATCH (s:Entity {name: '唇腭裂'}), (o:Entity {name: '耳鼻喉科'})
MERGE (s)-[r:RELATED_TO {predicate: '就诊科室'}]->(o) SET r.source = '唇腭裂@助听器通常要在手术后咨询耳鼻喉科和听力学家。唇腭裂@ ### 腭瘘 | 存在差异 | 低 大约 10% 至 20% 颚成形术发生腭瘘。';

MERGE (s:Entity {name: '唇腭裂'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '颚成形术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '唇腭裂'}), (o:Entity {name: '颚成形术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '唇腭裂@助听器通常要在手术后咨询耳鼻喉科和听力学家。唇腭裂@ ### 腭瘘 | 存在差异 | 低 大约 10% 至 20% 颚成形术发生腭瘘。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺炎支原体'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: '肺炎支原体'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（转化）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'EB病毒感染'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: 'EB病毒感染'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（转化）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '淋巴增生性疾病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: '淋巴增生性疾病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（转化）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肢端坏死'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: '肢端坏死'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '溃疡'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: '溃疡'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '溶血'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: '溶血'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: '冷凝集素病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '雷诺'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '冷凝集素病'}), (o:Entity {name: '雷诺'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '1.冷凝集素病 常继发于肺炎支原体、EB病毒感染或继发于淋巴增生性疾病，产生识别I/i系统寡糖抗原的抗体，通常为IgM，需补体参与。临床上溶血症状较轻，常伴有雷诺症状，可发生肢端坏死、溃疡。';

MERGE (s:Entity {name: 'HLH'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'DEX'})
  SET o.type = '药物';
MATCH (s:Entity {name: 'HLH'}), (o:Entity {name: 'DEX'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '凡符合HLH的临床诊断标准，或髙度怀疑HLH而未完全达到诊断标准且病情进展迅速者，应立即开始治疗。 维持治疗:DEX，每2周1次,静脉滴注或口服,10mg/(m2 • d) x3天;VP-16针剂，每2周1 次,每次150mg/m2 ； C';

MERGE (s:Entity {name: 'HLH'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'VP-16'})
  SET o.type = '药物';
MATCH (s:Entity {name: 'HLH'}), (o:Entity {name: 'VP-16'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '凡符合HLH的临床诊断标准，或髙度怀疑HLH而未完全达到诊断标准且病情进展迅速者，应立即开始治疗。 维持治疗:DEX，每2周1次,静脉滴注或口服,10mg/(m2 • d) x3天;VP-16针剂，每2周1 次,每次150mg/m2 ； C';

MERGE (s:Entity {name: 'HLH'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'CsA'})
  SET o.type = '药物';
MATCH (s:Entity {name: 'HLH'}), (o:Entity {name: 'CsA'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '凡符合HLH的临床诊断标准，或髙度怀疑HLH而未完全达到诊断标准且病情进展迅速者，应立即开始治疗。 维持治疗:DEX，每2周1次,静脉滴注或口服,10mg/(m2 • d) x3天;VP-16针剂，每2周1 次,每次150mg/m2 ； C';

MERGE (s:Entity {name: '前列腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '骨'})
  SET o.type = '部位';
MATCH (s:Entity {name: '前列腺癌'}), (o:Entity {name: '骨'})
MERGE (s)-[r:RELATED_TO {predicate: '转移部位'}]->(o) SET r.source = '前列腺癌@骨转移的患者，可使用这些药物预防骨相关事件。 前列腺癌@附加 –   外照射 针对经选择患者组部分患者的治疗推荐 姑息性剂量的放疗可用于疼痛的骨转移灶。';

MERGE (s:Entity {name: '前列腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '外照射'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '前列腺癌'}), (o:Entity {name: '外照射'})
MERGE (s)-[r:RELATED_TO {predicate: '放射治疗'}]->(o) SET r.source = '前列腺癌@骨转移的患者，可使用这些药物预防骨相关事件。 前列腺癌@附加 –   外照射 针对经选择患者组部分患者的治疗推荐 姑息性剂量的放疗可用于疼痛的骨转移灶。';

MERGE (s:Entity {name: '前列腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '放疗'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '前列腺癌'}), (o:Entity {name: '放疗'})
MERGE (s)-[r:RELATED_TO {predicate: '放射治疗'}]->(o) SET r.source = '前列腺癌@骨转移的患者，可使用这些药物预防骨相关事件。 前列腺癌@附加 –   外照射 针对经选择患者组部分患者的治疗推荐 姑息性剂量的放疗可用于疼痛的骨转移灶。';

MERGE (s:Entity {name: '前列腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '疼痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '前列腺癌'}), (o:Entity {name: '疼痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '前列腺癌@骨转移的患者，可使用这些药物预防骨相关事件。 前列腺癌@附加 –   外照射 针对经选择患者组部分患者的治疗推荐 姑息性剂量的放疗可用于疼痛的骨转移灶。';

MERGE (s:Entity {name: 'UC'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '溃疡性结肠炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'UC'}), (o:Entity {name: '溃疡性结肠炎'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '溃疡性结肠炎@### 关节炎和脊柱炎 UC还可表现为外周关节炎、强直性脊柱炎和不能区别的脊椎关节病。';

MERGE (s:Entity {name: '溃疡性结肠炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '关节炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溃疡性结肠炎'}), (o:Entity {name: '关节炎'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '溃疡性结肠炎@### 关节炎和脊柱炎 UC还可表现为外周关节炎、强直性脊柱炎和不能区别的脊椎关节病。';

MERGE (s:Entity {name: '溃疡性结肠炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脊柱炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溃疡性结肠炎'}), (o:Entity {name: '脊柱炎'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '溃疡性结肠炎@### 关节炎和脊柱炎 UC还可表现为外周关节炎、强直性脊柱炎和不能区别的脊椎关节病。';

MERGE (s:Entity {name: '溃疡性结肠炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '外周关节炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溃疡性结肠炎'}), (o:Entity {name: '外周关节炎'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '溃疡性结肠炎@### 关节炎和脊柱炎 UC还可表现为外周关节炎、强直性脊柱炎和不能区别的脊椎关节病。';

MERGE (s:Entity {name: '溃疡性结肠炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '强直性脊柱炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溃疡性结肠炎'}), (o:Entity {name: '强直性脊柱炎'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '溃疡性结肠炎@### 关节炎和脊柱炎 UC还可表现为外周关节炎、强直性脊柱炎和不能区别的脊椎关节病。';

MERGE (s:Entity {name: '溃疡性结肠炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脊椎关节病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '溃疡性结肠炎'}), (o:Entity {name: '脊椎关节病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '溃疡性结肠炎@### 关节炎和脊柱炎 UC还可表现为外周关节炎、强直性脊柱炎和不能区别的脊椎关节病。';

MERGE (s:Entity {name: '缺血性卒中'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '近端球囊引导导管或大口径远端导管联合支架取栓器'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '缺血性卒中'}), (o:Entity {name: '近端球囊引导导管或大口径远端导管联合支架取栓器'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '缺血性卒中@使用近端球囊引导导管或大口径远端导管联合支架取栓器（而不是单用颈部引导导管）在某些谨慎选择的患者中也可能有帮助。缺血性卒中@另外，如在症状出现 6 小时内使用，使用辅助干预（例如动脉内溶栓）实现可接受的再灌注也可能是合理的。';

MERGE (s:Entity {name: '缺血性卒中'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '辅助干预'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '缺血性卒中'}), (o:Entity {name: '辅助干预'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '缺血性卒中@使用近端球囊引导导管或大口径远端导管联合支架取栓器（而不是单用颈部引导导管）在某些谨慎选择的患者中也可能有帮助。缺血性卒中@另外，如在症状出现 6 小时内使用，使用辅助干预（例如动脉内溶栓）实现可接受的再灌注也可能是合理的。';

MERGE (s:Entity {name: '缺血性卒中'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '动脉内溶栓'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '缺血性卒中'}), (o:Entity {name: '动脉内溶栓'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '缺血性卒中@使用近端球囊引导导管或大口径远端导管联合支架取栓器（而不是单用颈部引导导管）在某些谨慎选择的患者中也可能有帮助。缺血性卒中@另外，如在症状出现 6 小时内使用，使用辅助干预（例如动脉内溶栓）实现可接受的再灌注也可能是合理的。';

MERGE (s:Entity {name: '肝癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '基础代谢生化检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '肝癌'}), (o:Entity {name: '基础代谢生化检查'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: 'BMP'})
  SET s.type = '检查';
MERGE (o:Entity {name: '基础代谢生化检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'BMP'}), (o:Entity {name: '基础代谢生化检查'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '肝癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '小细胞性贫血'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肝癌'}), (o:Entity {name: '小细胞性贫血'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '肝癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血小板减少症'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肝癌'}), (o:Entity {name: '血小板减少症'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '肝癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '低钠血症'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肝癌'}), (o:Entity {name: '低钠血症'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '肝癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血小板低'})
  SET o.type = '症状';
MATCH (s:Entity {name: '肝癌'}), (o:Entity {name: '血小板低'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '肝硬化'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '门静脉高压'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肝硬化'}), (o:Entity {name: '门静脉高压'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '低钠血症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '容量超负荷'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '低钠血症'}), (o:Entity {name: '容量超负荷'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '低钠血症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '应用利尿剂'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '低钠血症'}), (o:Entity {name: '应用利尿剂'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '肝癌@血小板低提示肝硬化导致的门静脉高压。 肝癌@结果 小细胞性贫血和/或血小板减少症 ### 基础代谢生化检查 (BMP) 检查肝癌-基础代谢生化检查 (BMP)-实验室检查-> 结果 检查 患者可能因容量超负荷或应用利尿剂而导致低钠血症';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '95%'})
  SET o.type = '预后';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: '95%'})
MERGE (s)-[r:RELATED_TO {predicate: '预后生存率'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '79%'})
  SET o.type = '预后';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: '79%'})
MERGE (s)-[r:RELATED_TO {predicate: '预后生存率'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '53%'})
  SET o.type = '预后';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: '53%'})
MERGE (s)-[r:RELATED_TO {predicate: '预后生存率'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '19%'})
  SET o.type = '预后';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: '19%'})
MERGE (s)-[r:RELATED_TO {predicate: '预后生存率'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'T1 期'})
  SET o.type = '其他';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: 'T1 期'})
MERGE (s)-[r:RELATED_TO {predicate: '阶段'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'T2 期'})
  SET o.type = '其他';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: 'T2 期'})
MERGE (s)-[r:RELATED_TO {predicate: '阶段'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'T3 期'})
  SET o.type = '其他';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: 'T3 期'})
MERGE (s)-[r:RELATED_TO {predicate: '阶段'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'T4 期'})
  SET o.type = '其他';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: 'T4 期'})
MERGE (s)-[r:RELATED_TO {predicate: '阶段'}]->(o) SET r.source = '肛门癌@5 年生存率也相应降低（T1 期为 95%、T2 期为 79%、T3 期为 53%、T4 期为 19%）。';

MERGE (s:Entity {name: '胆囊炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性胆管炎'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胆囊炎'}), (o:Entity {name: '急性胆管炎'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '胆囊炎@## 鉴别诊断 ### 查看全部  ### 急性胆管炎 体征/症状 检查 体征/症状 典型症状为发热寒战、黄疸和腹痛（夏科三联征）。';

MERGE (s:Entity {name: '胆囊炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '发热寒战'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胆囊炎'}), (o:Entity {name: '发热寒战'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胆囊炎@## 鉴别诊断 ### 查看全部  ### 急性胆管炎 体征/症状 检查 体征/症状 典型症状为发热寒战、黄疸和腹痛（夏科三联征）。';

MERGE (s:Entity {name: '胆囊炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '腹痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胆囊炎'}), (o:Entity {name: '腹痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胆囊炎@## 鉴别诊断 ### 查看全部  ### 急性胆管炎 体征/症状 检查 体征/症状 典型症状为发热寒战、黄疸和腹痛（夏科三联征）。';

MERGE (s:Entity {name: '黄疸'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '夏科三联征'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '黄疸'}), (o:Entity {name: '夏科三联征'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '胆囊炎@## 鉴别诊断 ### 查看全部  ### 急性胆管炎 体征/症状 检查 体征/症状 典型症状为发热寒战、黄疸和腹痛（夏科三联征）。';

MERGE (s:Entity {name: '胆囊炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '黄疸'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胆囊炎'}), (o:Entity {name: '黄疸'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '胆囊炎@## 鉴别诊断 ### 查看全部  ### 急性胆管炎 体征/症状 检查 体征/症状 典型症状为发热寒战、黄疸和腹痛（夏科三联征）。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '猩红热'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '猩红热'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '川崎病@ 【鉴别诊断】 川崎病有许多同其他感染性疾病相似的表现。川崎病@需与其鉴别的有细菌性感染如猩红热，葡萄球菌引起的皮肤症状，中毒性休克，风湿热，洛基山斑疹热和细螺旋体病。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '中毒性休克'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '中毒性休克'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '川崎病@ 【鉴别诊断】 川崎病有许多同其他感染性疾病相似的表现。川崎病@需与其鉴别的有细菌性感染如猩红热，葡萄球菌引起的皮肤症状，中毒性休克，风湿热，洛基山斑疹热和细螺旋体病。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '风湿热'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '风湿热'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '川崎病@ 【鉴别诊断】 川崎病有许多同其他感染性疾病相似的表现。川崎病@需与其鉴别的有细菌性感染如猩红热，葡萄球菌引起的皮肤症状，中毒性休克，风湿热，洛基山斑疹热和细螺旋体病。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '洛基山斑疹热'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '洛基山斑疹热'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '川崎病@ 【鉴别诊断】 川崎病有许多同其他感染性疾病相似的表现。川崎病@需与其鉴别的有细菌性感染如猩红热，葡萄球菌引起的皮肤症状，中毒性休克，风湿热，洛基山斑疹热和细螺旋体病。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '细螺旋体病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '细螺旋体病'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '川崎病@ 【鉴别诊断】 川崎病有许多同其他感染性疾病相似的表现。川崎病@需与其鉴别的有细菌性感染如猩红热，葡萄球菌引起的皮肤症状，中毒性休克，风湿热，洛基山斑疹热和细螺旋体病。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '细菌性感染'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '细菌性感染'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '川崎病@ 【鉴别诊断】 川崎病有许多同其他感染性疾病相似的表现。川崎病@需与其鉴别的有细菌性感染如猩红热，葡萄球菌引起的皮肤症状，中毒性休克，风湿热，洛基山斑疹热和细螺旋体病。';

MERGE (s:Entity {name: '心房扑动'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '房扑'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '心房扑动'}), (o:Entity {name: '房扑'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第五节 心房扑动 心房扑动（简称房扑）系由于激动在心房内快速环形运动所产生的一种主动性快速而规则的心律失常。 心房扑动@ 在年长儿，房扑通常发生在有先天性心脏病的基础上。';

MERGE (s:Entity {name: '心房扑动'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '激动在心房内快速环形运动'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '心房扑动'}), (o:Entity {name: '激动在心房内快速环形运动'})
MERGE (s)-[r:RELATED_TO {predicate: '病理生理'}]->(o) SET r.source = '第五节 心房扑动 心房扑动（简称房扑）系由于激动在心房内快速环形运动所产生的一种主动性快速而规则的心律失常。 心房扑动@ 在年长儿，房扑通常发生在有先天性心脏病的基础上。';

MERGE (s:Entity {name: '心律失常'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '心房扑动'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '心律失常'}), (o:Entity {name: '心房扑动'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第五节 心房扑动 心房扑动（简称房扑）系由于激动在心房内快速环形运动所产生的一种主动性快速而规则的心律失常。 心房扑动@ 在年长儿，房扑通常发生在有先天性心脏病的基础上。';

MERGE (s:Entity {name: '先天性心脏病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '心房扑动'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '先天性心脏病'}), (o:Entity {name: '心房扑动'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '第五节 心房扑动 心房扑动（简称房扑）系由于激动在心房内快速环形运动所产生的一种主动性快速而规则的心律失常。 心房扑动@ 在年长儿，房扑通常发生在有先天性心脏病的基础上。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '监测血压'})
  SET o.type = '检查';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '监测血压'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '尿液分析'})
  SET o.type = '检查';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '尿液分析'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '子痫前期'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '子痫前期'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '妊娠期糖尿病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '妊娠期糖尿病'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '改变生活方式'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '改变生活方式'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '降压'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '降压'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '妊娠期高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '轻度高血压'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '妊娠期高血压'}), (o:Entity {name: '轻度高血压'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '妊娠期高血压@妊娠期间，患者需定期监测血压和进行尿液分析以排除子痫前期和妊娠期糖尿病。 妊娠期高血压@轻度高血压可以通过改变生活方式和降压治疗进行处理。';

MERGE (s:Entity {name: '先天性巨结肠'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Hirschsprung’s disease'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '先天性巨结肠'}), (o:Entity {name: 'Hirschsprung’s disease'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '先天性巨结肠'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'HD'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '先天性巨结肠'}), (o:Entity {name: 'HD'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '先天性巨结肠'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '1/5000'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '先天性巨结肠'}), (o:Entity {name: '1/5000'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '先天性巨结肠'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '男孩'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '先天性巨结肠'}), (o:Entity {name: '男孩'})
MERGE (s)-[r:RELATED_TO {predicate: '发病性别倾向'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '先天性巨结肠'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '结肠结缔组织病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '先天性巨结肠'}), (o:Entity {name: '结肠结缔组织病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '小儿消化道畸形'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '先天性巨结肠'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '小儿消化道畸形'}), (o:Entity {name: '先天性巨结肠'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '结肠结缔组织病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '神经节细胞异位'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '结肠结缔组织病'}), (o:Entity {name: '神经节细胞异位'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '结肠结缔组织病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肠道蠕动功能受损'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '结肠结缔组织病'}), (o:Entity {name: '肠道蠕动功能受损'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '结肠结缔组织病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肠管肌层的结缔组织完全或部分缺损'})
  SET o.type = '症状';
MATCH (s:Entity {name: '结肠结缔组织病'}), (o:Entity {name: '肠管肌层的结缔组织完全或部分缺损'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第四节 先天性巨结肠 【发病率】 先天性巨结肠（Hirschsprung’s disease，HD）是一种比较常见的小儿消化道畸形，国外统计发病率为1/5000，其中男孩占70%～80%。 （六）结肠结缔组织病 近年来认为结肠结缔组织病是导';

MERGE (s:Entity {name: '帕金森病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '运动迟缓'})
  SET o.type = '症状';
MATCH (s:Entity {name: '帕金森病'}), (o:Entity {name: '运动迟缓'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '帕金森病@病史将包括提示运动迟缓、强直、静止性震颤和/或姿势不稳的症状。';

MERGE (s:Entity {name: '帕金森病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '强直'})
  SET o.type = '症状';
MATCH (s:Entity {name: '帕金森病'}), (o:Entity {name: '强直'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '帕金森病@病史将包括提示运动迟缓、强直、静止性震颤和/或姿势不稳的症状。';

MERGE (s:Entity {name: '帕金森病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '静止性震颤'})
  SET o.type = '症状';
MATCH (s:Entity {name: '帕金森病'}), (o:Entity {name: '静止性震颤'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '帕金森病@病史将包括提示运动迟缓、强直、静止性震颤和/或姿势不稳的症状。';

MERGE (s:Entity {name: '帕金森病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '姿势不稳'})
  SET o.type = '症状';
MATCH (s:Entity {name: '帕金森病'}), (o:Entity {name: '姿势不稳'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '帕金森病@病史将包括提示运动迟缓、强直、静止性震颤和/或姿势不稳的症状。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '各种病原微生物'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '各种病原微生物'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '大肠杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '大肠杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺炎克雷伯杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '肺炎克雷伯杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '变形杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '变形杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '产气杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '产气杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '产碱杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '产碱杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '革兰阳性球菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '革兰阳性球菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肠链球菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '肠链球菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '葡萄球菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '葡萄球菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肠道细菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '肠道细菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: '尿感'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '绿脓杆菌'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '尿感'}), (o:Entity {name: '绿脓杆菌'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '【病因和发病机制】 （一）病因 各种病原微生物即为尿感的病因，大肠杆菌占75%～90%，其次为肺炎克雷伯杆菌、变形杆菌、产气杆菌和产碱杆菌，近年来革兰阳性球菌的比例升高，如肠链球菌和葡萄球菌。有器械操作诱发尿感的细菌可为肠道细菌和绿脓杆菌。';

MERGE (s:Entity {name: 'Lowe眼-脑-肾综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '先天性白内障'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Lowe眼-脑-肾综合征'}), (o:Entity {name: '先天性白内障'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Lowe眼-脑-肾综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '青光眼'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Lowe眼-脑-肾综合征'}), (o:Entity {name: '青光眼'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Lowe眼-脑-肾综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '智能及生长发育障碍'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Lowe眼-脑-肾综合征'}), (o:Entity {name: '智能及生长发育障碍'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Lowe眼-脑-肾综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Fanconi综合征'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Lowe眼-脑-肾综合征'}), (o:Entity {name: 'Fanconi综合征'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑胶质增生'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '脑胶质增生'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脱髓鞘'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '脱髓鞘'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '囊性改变'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '囊性改变'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'MRI'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: 'MRI'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑部'})
  SET o.type = '部位';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '脑部'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾脏'})
  SET o.type = '部位';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '肾脏'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '眼部'})
  SET o.type = '部位';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '眼部'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'Fanconi综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血、尿的生化分析'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'Fanconi综合征'}), (o:Entity {name: '血、尿的生化分析'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'T2相或增强扫描可见不规则片状高密影'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Fanconi综合征'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'T2相或增强扫描可见不规则片状高密影'}), (o:Entity {name: 'Fanconi综合征'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: 'T2相或增强扫描可见不规则片状高密影'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'T1相及增强扫描低密度改变'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'T2相或增强扫描可见不规则片状高密影'}), (o:Entity {name: 'T1相及增强扫描低密度改变'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'MRI可见两类改变：①T2相或增强扫描可见不规则片状高密影，可能系脑胶质增生或脱髓鞘病变；②T1相及增强扫描低密度改变，提示囊性改变。 【诊断】 根据先天性白内障、青光眼、智能及生长发育障碍，Fanconi综合征的典型表现，确诊Lowe眼-';

MERGE (s:Entity {name: '疟疾感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'HIV血清转换'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '疟疾感染'}), (o:Entity {name: 'HIV血清转换'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '疟疾感染@[ HIV血清转换 ](/topics/zh-cn/555) ### 阿米巴肝脓肿 体征/症状 检查 体征/症状 不到50%的人有细菌性痢疾史。疟疾感染@常伴有触痛性肝肿大和右侧胸腔积液。';

MERGE (s:Entity {name: '疟疾感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '阿米巴肝脓肿'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '疟疾感染'}), (o:Entity {name: '阿米巴肝脓肿'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '疟疾感染@[ HIV血清转换 ](/topics/zh-cn/555) ### 阿米巴肝脓肿 体征/症状 检查 体征/症状 不到50%的人有细菌性痢疾史。疟疾感染@常伴有触痛性肝肿大和右侧胸腔积液。';

MERGE (s:Entity {name: '阿米巴肝脓肿'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '细菌性痢疾史'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '阿米巴肝脓肿'}), (o:Entity {name: '细菌性痢疾史'})
MERGE (s)-[r:RELATED_TO {predicate: '病史'}]->(o) SET r.source = '疟疾感染@[ HIV血清转换 ](/topics/zh-cn/555) ### 阿米巴肝脓肿 体征/症状 检查 体征/症状 不到50%的人有细菌性痢疾史。疟疾感染@常伴有触痛性肝肿大和右侧胸腔积液。';

MERGE (s:Entity {name: '疟疾感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '触痛性肝肿大'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '疟疾感染'}), (o:Entity {name: '触痛性肝肿大'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '疟疾感染@[ HIV血清转换 ](/topics/zh-cn/555) ### 阿米巴肝脓肿 体征/症状 检查 体征/症状 不到50%的人有细菌性痢疾史。疟疾感染@常伴有触痛性肝肿大和右侧胸腔积液。';

MERGE (s:Entity {name: '疟疾感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '右侧胸腔积液'})
  SET o.type = '症状';
MATCH (s:Entity {name: '疟疾感染'}), (o:Entity {name: '右侧胸腔积液'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '疟疾感染@[ HIV血清转换 ](/topics/zh-cn/555) ### 阿米巴肝脓肿 体征/症状 检查 体征/症状 不到50%的人有细菌性痢疾史。疟疾感染@常伴有触痛性肝肿大和右侧胸腔积液。';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸部平片'})
  SET o.type = '检查';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '胸部平片'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '急性期掌跖红斑'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '急性期掌跖红斑'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '手足硬性水肿'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '手足硬性水肿'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '恢复期指趾端膜状脱皮'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '恢复期指趾端膜状脱皮'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '多形性皮疹'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '多形性皮疹'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（症状）'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '眼结合膜充血'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '眼结合膜充血'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '非化脓性 唇充血皲裂'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '非化脓性 唇充血皲裂'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '口腔黏膜弥漫充血'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '口腔黏膜弥漫充血'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '舌乳头突起'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '舌乳头突起'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '充血呈草莓舌'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '充血呈草莓舌'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '颈部淋巴结肿大'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '颈部淋巴结肿大'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: 'IVIG非敏感型KD'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'IVIG无反应型KD'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'IVIG非敏感型KD'}), (o:Entity {name: 'IVIG无反应型KD'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: 'IVIG非敏感型KD'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'JVIG耐药型KD'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'IVIG非敏感型KD'}), (o:Entity {name: 'JVIG耐药型KD'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: 'IVIG非敏感型KD'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '难治型KD'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'IVIG非敏感型KD'}), (o:Entity {name: '难治型KD'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺部纹理增多、模糊或有片状阴影'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '肺部纹理增多、模糊或有片状阴影'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '心影可扩大'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '心影可扩大'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '川崎病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '超声心动图有冠状动脉损害'})
  SET o.type = '症状';
MATCH (s:Entity {name: '川崎病'}), (o:Entity {name: '超声心动图有冠状动脉损害'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '胸部平片 可示肺部纹理增多、模糊或有片状阴影，心影可扩大。 【诊断和鉴别诊断】 诊断标准（表7-8) 表7-8川崎病的诊断标准 发热5天以上,伴下列5项临床表现中4项者，排除其他疾病后，即可诊断为川崎病： 四肢变化:急性期掌跖红斑，手足硬性';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '刺激性呛咳'})
  SET o.type = '症状';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '刺激性呛咳'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸困难'})
  SET o.type = '症状';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '呼吸困难'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '发绀'})
  SET o.type = '症状';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '发绀'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸节律不整'})
  SET o.type = '症状';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '呼吸节律不整'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸中枢抑制'})
  SET o.type = '症状';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '呼吸中枢抑制'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸肌麻痹'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '呼吸肌麻痹'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺水肿'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '肺水肿'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '中毒'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '呼吸衰竭'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '中毒'}), (o:Entity {name: '呼吸衰竭'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '中毒患儿可出现刺激性呛咳、呼吸困难、发绀、肺水肿及呼吸节律不整，严重者导致呼吸中枢抑制或呼吸肌麻痹以及呼吸衰竭。';

MERGE (s:Entity {name: '慢性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胰腺'})
  SET o.type = '部位';
MATCH (s:Entity {name: '慢性胰腺炎'}), (o:Entity {name: '胰腺'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = '慢性胰腺炎@### 胰腺功能和结构检查 胰腺功能检查包括直接和间接两种方法。';

MERGE (s:Entity {name: '慢性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胰腺功能和结构检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '慢性胰腺炎'}), (o:Entity {name: '胰腺功能和结构检查'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '慢性胰腺炎@### 胰腺功能和结构检查 胰腺功能检查包括直接和间接两种方法。';

MERGE (s:Entity {name: '痔病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '突发的肛周疼痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '痔病'}), (o:Entity {name: '突发的肛周疼痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '痔@痔病表现为无痛性直肠出血或突发的肛周疼痛伴有触痛性包块。';

MERGE (s:Entity {name: '痔病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '触痛性包块'})
  SET o.type = '症状';
MATCH (s:Entity {name: '痔病'}), (o:Entity {name: '触痛性包块'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '痔@痔病表现为无痛性直肠出血或突发的肛周疼痛伴有触痛性包块。';

MERGE (s:Entity {name: '痔病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '无痛性直肠出血'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '痔病'}), (o:Entity {name: '无痛性直肠出血'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '痔@痔病表现为无痛性直肠出血或突发的肛周疼痛伴有触痛性包块。';

MERGE (s:Entity {name: 'GSDⅣ型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝脏'})
  SET o.type = '部位';
MATCH (s:Entity {name: 'GSDⅣ型'}), (o:Entity {name: '肝脏'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = 'GSDⅣ型（Andersen病）分支酶缺陷。受累组织主要为肝脏；心脏及肌肉较少累及。';

MERGE (s:Entity {name: 'GSDⅣ型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '心脏'})
  SET o.type = '部位';
MATCH (s:Entity {name: 'GSDⅣ型'}), (o:Entity {name: '心脏'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = 'GSDⅣ型（Andersen病）分支酶缺陷。受累组织主要为肝脏；心脏及肌肉较少累及。';

MERGE (s:Entity {name: 'GSDⅣ型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肌肉'})
  SET o.type = '部位';
MATCH (s:Entity {name: 'GSDⅣ型'}), (o:Entity {name: '肌肉'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = 'GSDⅣ型（Andersen病）分支酶缺陷。受累组织主要为肝脏；心脏及肌肉较少累及。';

MERGE (s:Entity {name: 'GSDⅣ型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Andersen病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'GSDⅣ型'}), (o:Entity {name: 'Andersen病'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = 'GSDⅣ型（Andersen病）分支酶缺陷。受累组织主要为肝脏；心脏及肌肉较少累及。';

MERGE (s:Entity {name: 'GSDⅣ型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '分支酶缺陷'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'GSDⅣ型'}), (o:Entity {name: '分支酶缺陷'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = 'GSDⅣ型（Andersen病）分支酶缺陷。受累组织主要为肝脏；心脏及肌肉较少累及。';

MERGE (s:Entity {name: '婴儿猝死综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '睡姿'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '婴儿猝死综合征'}), (o:Entity {name: '睡姿'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '婴儿猝死综合征@已经充分确定了与其他可改变危险因素的相关性，如睡姿、床面、睡眠环境布置、吸烟暴露、无母乳喂养以及未使用橡皮奶嘴等，但是尚未确定直接的致病原因。';

MERGE (s:Entity {name: '婴儿猝死综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '床面'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '婴儿猝死综合征'}), (o:Entity {name: '床面'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '婴儿猝死综合征@已经充分确定了与其他可改变危险因素的相关性，如睡姿、床面、睡眠环境布置、吸烟暴露、无母乳喂养以及未使用橡皮奶嘴等，但是尚未确定直接的致病原因。';

MERGE (s:Entity {name: '婴儿猝死综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '睡眠环境布置'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '婴儿猝死综合征'}), (o:Entity {name: '睡眠环境布置'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '婴儿猝死综合征@已经充分确定了与其他可改变危险因素的相关性，如睡姿、床面、睡眠环境布置、吸烟暴露、无母乳喂养以及未使用橡皮奶嘴等，但是尚未确定直接的致病原因。';

MERGE (s:Entity {name: '婴儿猝死综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '吸烟暴露'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '婴儿猝死综合征'}), (o:Entity {name: '吸烟暴露'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '婴儿猝死综合征@已经充分确定了与其他可改变危险因素的相关性，如睡姿、床面、睡眠环境布置、吸烟暴露、无母乳喂养以及未使用橡皮奶嘴等，但是尚未确定直接的致病原因。';

MERGE (s:Entity {name: '婴儿猝死综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '无母乳喂养'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '婴儿猝死综合征'}), (o:Entity {name: '无母乳喂养'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '婴儿猝死综合征@已经充分确定了与其他可改变危险因素的相关性，如睡姿、床面、睡眠环境布置、吸烟暴露、无母乳喂养以及未使用橡皮奶嘴等，但是尚未确定直接的致病原因。';

MERGE (s:Entity {name: '婴儿猝死综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '未使用橡皮奶嘴'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '婴儿猝死综合征'}), (o:Entity {name: '未使用橡皮奶嘴'})
MERGE (s)-[r:RELATED_TO {predicate: '高危因素'}]->(o) SET r.source = '婴儿猝死综合征@已经充分确定了与其他可改变危险因素的相关性，如睡姿、床面、睡眠环境布置、吸烟暴露、无母乳喂养以及未使用橡皮奶嘴等，但是尚未确定直接的致病原因。';

MERGE (s:Entity {name: 'IgA肾病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '终末肾功衰竭'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'IgA肾病'}), (o:Entity {name: '终末肾功衰竭'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（转化）'}]->(o) SET r.source = '【预后】 成人IgA肾病10年后约15%进展到终末肾功衰竭，20年后升至25%～30%。';

MERGE (s:Entity {name: 'IgA肾病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '10年后约15%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: 'IgA肾病'}), (o:Entity {name: '10年后约15%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '【预后】 成人IgA肾病10年后约15%进展到终末肾功衰竭，20年后升至25%～30%。';

MERGE (s:Entity {name: 'IgA肾病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '20年后升至25%～30%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: 'IgA肾病'}), (o:Entity {name: '20年后升至25%～30%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '【预后】 成人IgA肾病10年后约15%进展到终末肾功衰竭，20年后升至25%～30%。';

MERGE (s:Entity {name: '高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '硝苯地平'})
  SET o.type = '药物';
MATCH (s:Entity {name: '高血压'}), (o:Entity {name: '硝苯地平'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '高血压紧急状态的治疗，目的在于在24小时内使血压降低。应先将患儿置于光线较暗、体位舒适的地方，30分钟后复测血压，若仍保持较高血压，先给予口服药治疗，如硝苯地平（心痛定）、卡托普利等，应监护患儿1～2小时，以确保治疗有效而无不良反应。';

MERGE (s:Entity {name: '高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '卡托普利'})
  SET o.type = '药物';
MATCH (s:Entity {name: '高血压'}), (o:Entity {name: '卡托普利'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '高血压紧急状态的治疗，目的在于在24小时内使血压降低。应先将患儿置于光线较暗、体位舒适的地方，30分钟后复测血压，若仍保持较高血压，先给予口服药治疗，如硝苯地平（心痛定）、卡托普利等，应监护患儿1～2小时，以确保治疗有效而无不良反应。';

MERGE (s:Entity {name: '硝苯地平'})
  SET s.type = '药物';
MERGE (o:Entity {name: '心痛定'})
  SET o.type = '药物';
MATCH (s:Entity {name: '硝苯地平'}), (o:Entity {name: '心痛定'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '高血压紧急状态的治疗，目的在于在24小时内使血压降低。应先将患儿置于光线较暗、体位舒适的地方，30分钟后复测血压，若仍保持较高血压，先给予口服药治疗，如硝苯地平（心痛定）、卡托普利等，应监护患儿1～2小时，以确保治疗有效而无不良反应。';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '不明原因高热（ ≥ 38 ℃ ）'})
  SET o.type = '症状';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '不明原因高热（ ≥ 38 ℃ ）'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '头痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '头痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肌肉酸痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '肌肉酸痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '皮疹'})
  SET o.type = '症状';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '皮疹'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '粒细胞小板减少'})
  SET o.type = '症状';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '粒细胞小板减少'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '气溶胶方式进行传播'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '气溶胶方式进行传播'})
MERGE (s)-[r:RELATED_TO {predicate: '传播途径'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露'})
MERGE (s)-[r:RELATED_TO {predicate: '传播途径'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '多西环素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '多西环素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '四环素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '四环素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '氯霉素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '氯霉素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '传统立克次体病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '传统立克次体病'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '立克次体感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '新发立克次体病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '立克次体感染'}), (o:Entity {name: '新发立克次体病'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '立克次体感染@立克次体是革兰阴性胞内寄生菌，生物学特征介于病毒和细菌之间，在动物宿主包括啮齿动物如鼠类和家畜等贮存宿主体内繁殖，传播途径主要是由节肢动物蜱、螨、蚤、虱等媒介的叮咬或暴露，以及气溶胶方式进行传播。立克次体感染@无论传统立克次体';

MERGE (s:Entity {name: '肺结核'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '痰培养结核分枝杆菌阳性'})
  SET o.type = '症状';
MATCH (s:Entity {name: '肺结核'}), (o:Entity {name: '痰培养结核分枝杆菌阳性'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'HIV 感染@痰培养结核分枝杆菌阳性，胸部 X 线检查结果也符合结核表现，从而确诊为肺结核。HIV 感染@目前正在服用的药物包括抗结核药和吡哆醇。';

MERGE (s:Entity {name: '肺结核'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗结核药'})
  SET o.type = '药物';
MATCH (s:Entity {name: '肺结核'}), (o:Entity {name: '抗结核药'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = 'HIV 感染@痰培养结核分枝杆菌阳性，胸部 X 线检查结果也符合结核表现，从而确诊为肺结核。HIV 感染@目前正在服用的药物包括抗结核药和吡哆醇。';

MERGE (s:Entity {name: '肺结核'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '吡哆醇'})
  SET o.type = '药物';
MATCH (s:Entity {name: '肺结核'}), (o:Entity {name: '吡哆醇'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = 'HIV 感染@痰培养结核分枝杆菌阳性，胸部 X 线检查结果也符合结核表现，从而确诊为肺结核。HIV 感染@目前正在服用的药物包括抗结核药和吡哆醇。';

MERGE (s:Entity {name: '肺结核'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸部 X 线'})
  SET o.type = '检查';
MATCH (s:Entity {name: '肺结核'}), (o:Entity {name: '胸部 X 线'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = 'HIV 感染@痰培养结核分枝杆菌阳性，胸部 X 线检查结果也符合结核表现，从而确诊为肺结核。HIV 感染@目前正在服用的药物包括抗结核药和吡哆醇。';

MERGE (s:Entity {name: '新生儿破伤风'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗生素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '新生儿破伤风'}), (o:Entity {name: '抗生素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '我国新中国成立前每年约100万新生儿死于破伤风，建国后发病率和死亡率显著下降，但在边远农村、山区及私自接生者新生儿破伤风仍不罕见。 （四）抗生素 青霉素：能杀灭破伤风梭菌，10万～20 万U/（kg•d），每天分2次，疗程10天左右。';

MERGE (s:Entity {name: '新生儿破伤风'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '青霉素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '新生儿破伤风'}), (o:Entity {name: '青霉素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '我国新中国成立前每年约100万新生儿死于破伤风，建国后发病率和死亡率显著下降，但在边远农村、山区及私自接生者新生儿破伤风仍不罕见。 （四）抗生素 青霉素：能杀灭破伤风梭菌，10万～20 万U/（kg•d），每天分2次，疗程10天左右。';

MERGE (s:Entity {name: '新生儿破伤风'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '边远农村、山区'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '新生儿破伤风'}), (o:Entity {name: '边远农村、山区'})
MERGE (s)-[r:RELATED_TO {predicate: '多发地区'}]->(o) SET r.source = '我国新中国成立前每年约100万新生儿死于破伤风，建国后发病率和死亡率显著下降，但在边远农村、山区及私自接生者新生儿破伤风仍不罕见。 （四）抗生素 青霉素：能杀灭破伤风梭菌，10万～20 万U/（kg•d），每天分2次，疗程10天左右。';

MERGE (s:Entity {name: '新生儿破伤风'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '私自接生'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '新生儿破伤风'}), (o:Entity {name: '私自接生'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '我国新中国成立前每年约100万新生儿死于破伤风，建国后发病率和死亡率显著下降，但在边远农村、山区及私自接生者新生儿破伤风仍不罕见。 （四）抗生素 青霉素：能杀灭破伤风梭菌，10万～20 万U/（kg•d），每天分2次，疗程10天左右。';

MERGE (s:Entity {name: '锌缺乏'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '厌食'})
  SET o.type = '症状';
MATCH (s:Entity {name: '锌缺乏'}), (o:Entity {name: '厌食'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【临床表现】 锌缺乏的临床表现是一种或多种锌的生物学活性降低的结果。 （二）厌食、食欲降低 缺锌后常引起口腔黏膜增生及角化不全，易于脱落，而大量脱落的上皮细胞可以掩盖和阻塞舌乳头中的味蕾小孔，使食物难以接触味蕾，不易引起味觉和促进食欲。';

MERGE (s:Entity {name: '锌缺乏'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '食欲降低'})
  SET o.type = '症状';
MATCH (s:Entity {name: '锌缺乏'}), (o:Entity {name: '食欲降低'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【临床表现】 锌缺乏的临床表现是一种或多种锌的生物学活性降低的结果。 （二）厌食、食欲降低 缺锌后常引起口腔黏膜增生及角化不全，易于脱落，而大量脱落的上皮细胞可以掩盖和阻塞舌乳头中的味蕾小孔，使食物难以接触味蕾，不易引起味觉和促进食欲。';

MERGE (s:Entity {name: '锌缺乏'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '一种或多种锌的生物学活性降低'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '锌缺乏'}), (o:Entity {name: '一种或多种锌的生物学活性降低'})
MERGE (s)-[r:RELATED_TO {predicate: '发病机制'}]->(o) SET r.source = '【临床表现】 锌缺乏的临床表现是一种或多种锌的生物学活性降低的结果。 （二）厌食、食欲降低 缺锌后常引起口腔黏膜增生及角化不全，易于脱落，而大量脱落的上皮细胞可以掩盖和阻塞舌乳头中的味蕾小孔，使食物难以接触味蕾，不易引起味觉和促进食欲。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '较低剂量的放疗'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: '较低剂量的放疗'})
MERGE (s)-[r:RELATED_TO {predicate: '放射治疗'}]->(o) SET r.source = '肛门癌@对于 CD4 细胞计数＜200/μL 或出现其他 HIV 相关疾病体征或症状的患者，建议采用较低剂量的放疗和/或化疗。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '化疗'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: '化疗'})
MERGE (s)-[r:RELATED_TO {predicate: '化疗'}]->(o) SET r.source = '肛门癌@对于 CD4 细胞计数＜200/μL 或出现其他 HIV 相关疾病体征或症状的患者，建议采用较低剂量的放疗和/或化疗。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'HIV 相关疾病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: 'HIV 相关疾病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肛门癌@对于 CD4 细胞计数＜200/μL 或出现其他 HIV 相关疾病体征或症状的患者，建议采用较低剂量的放疗和/或化疗。';

MERGE (s:Entity {name: '肛门癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'CD4 细胞计数＜200/μL'})
  SET o.type = '症状';
MATCH (s:Entity {name: '肛门癌'}), (o:Entity {name: 'CD4 细胞计数＜200/μL'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '肛门癌@对于 CD4 细胞计数＜200/μL 或出现其他 HIV 相关疾病体征或症状的患者，建议采用较低剂量的放疗和/或化疗。';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '皮肤视诊'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '皮肤视诊'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '检查口腔'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '检查口腔'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '全身性淋巴结肿大'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '全身性淋巴结肿大'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '带状疱疹'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '带状疱疹'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '瘙痒性丘疹'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '瘙痒性丘疹'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '卡波西肉瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '卡波西肉瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '鹅口疮'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '鹅口疮'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '口腔毛状白斑'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '口腔毛状白斑'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '真菌感染'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '真菌感染'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（症状）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: 'HIV 感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '牙周疾病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'HIV 感染'}), (o:Entity {name: '牙周疾病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（症状）'}]->(o) SET r.source = 'HIV 感染@### 临床检查 从医生对患者的总体印象开始，应该确定患者身体状况良好还是不佳。HIV 感染@查体时应特别关注以下内容： * 体重和身高测量 * 检查是否有全身性淋巴结肿大，记录淋巴结的位置、大小和活动程度 * 皮肤视诊以查找';

MERGE (s:Entity {name: '肝硬化'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝性骨营养不良'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肝硬化'}), (o:Entity {name: '肝性骨营养不良'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝硬化@[ 男性性腺机能减退 ](/topics/zh-cn/1093) ### 肝性骨营养不良 | 存在差异 | 低 这一术语用来描述慢性肝病相关的骨质疏松症和骨软化症。';

MERGE (s:Entity {name: '肝硬化'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '男性性腺机能减退'})
  SET o.type = '症状';
MATCH (s:Entity {name: '肝硬化'}), (o:Entity {name: '男性性腺机能减退'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '肝硬化@[ 男性性腺机能减退 ](/topics/zh-cn/1093) ### 肝性骨营养不良 | 存在差异 | 低 这一术语用来描述慢性肝病相关的骨质疏松症和骨软化症。';

MERGE (s:Entity {name: '慢性肝病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肝硬化'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性肝病'}), (o:Entity {name: '肝硬化'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '肝硬化@[ 男性性腺机能减退 ](/topics/zh-cn/1093) ### 肝性骨营养不良 | 存在差异 | 低 这一术语用来描述慢性肝病相关的骨质疏松症和骨软化症。';

MERGE (s:Entity {name: '骨质疏松症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '慢性肝病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '骨质疏松症'}), (o:Entity {name: '慢性肝病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝硬化@[ 男性性腺机能减退 ](/topics/zh-cn/1093) ### 肝性骨营养不良 | 存在差异 | 低 这一术语用来描述慢性肝病相关的骨质疏松症和骨软化症。';

MERGE (s:Entity {name: '骨软化症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '慢性肝病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '骨软化症'}), (o:Entity {name: '慢性肝病'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '肝硬化@[ 男性性腺机能减退 ](/topics/zh-cn/1093) ### 肝性骨营养不良 | 存在差异 | 低 这一术语用来描述慢性肝病相关的骨质疏松症和骨软化症。';

MERGE (s:Entity {name: '新生儿狼疮综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '皮肤及血液改变'})
  SET o.type = '症状';
MATCH (s:Entity {name: '新生儿狼疮综合征'}), (o:Entity {name: '皮肤及血液改变'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '新生儿狼疮综合征@部分患儿由于母体的自身抗体，生后即出现短暂的皮肤及血液改变和持续的心脏异常等。';

MERGE (s:Entity {name: '新生儿狼疮综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '持续的心脏异常'})
  SET o.type = '症状';
MATCH (s:Entity {name: '新生儿狼疮综合征'}), (o:Entity {name: '持续的心脏异常'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '新生儿狼疮综合征@部分患儿由于母体的自身抗体，生后即出现短暂的皮肤及血液改变和持续的心脏异常等。';

MERGE (s:Entity {name: '新生儿狼疮综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '母体的自身抗体'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '新生儿狼疮综合征'}), (o:Entity {name: '母体的自身抗体'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '新生儿狼疮综合征@部分患儿由于母体的自身抗体，生后即出现短暂的皮肤及血液改变和持续的心脏异常等。';

MERGE (s:Entity {name: '先天性肾病综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'congenital nephrotic syndrome'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '先天性肾病综合征'}), (o:Entity {name: 'congenital nephrotic syndrome'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第三节 先天性肾病综合征 先天性肾病综合征（congenital nephrotic syndrome，CNS）指生后3个月内起病的肾病综合征。 免疫荧光检查病早期无Ig和补体沉着。';

MERGE (s:Entity {name: '先天性肾病综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'CNS'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '先天性肾病综合征'}), (o:Entity {name: 'CNS'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第三节 先天性肾病综合征 先天性肾病综合征（congenital nephrotic syndrome，CNS）指生后3个月内起病的肾病综合征。 免疫荧光检查病早期无Ig和补体沉着。';

MERGE (s:Entity {name: '先天性肾病综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '生后3个月'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '先天性肾病综合征'}), (o:Entity {name: '生后3个月'})
MERGE (s)-[r:RELATED_TO {predicate: '发病年龄'}]->(o) SET r.source = '第三节 先天性肾病综合征 先天性肾病综合征（congenital nephrotic syndrome，CNS）指生后3个月内起病的肾病综合征。 免疫荧光检查病早期无Ig和补体沉着。';

MERGE (s:Entity {name: '肾病综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '先天性肾病综合征'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '肾病综合征'}), (o:Entity {name: '先天性肾病综合征'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第三节 先天性肾病综合征 先天性肾病综合征（congenital nephrotic syndrome，CNS）指生后3个月内起病的肾病综合征。 免疫荧光检查病早期无Ig和补体沉着。';

MERGE (s:Entity {name: '先天性肾病综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '免疫荧光检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '先天性肾病综合征'}), (o:Entity {name: '免疫荧光检查'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '第三节 先天性肾病综合征 先天性肾病综合征（congenital nephrotic syndrome，CNS）指生后3个月内起病的肾病综合征。 免疫荧光检查病早期无Ig和补体沉着。';

MERGE (s:Entity {name: 'β地中海贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'HbA2 含量增高'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'β地中海贫血'}), (o:Entity {name: 'HbA2 含量增高'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【临床表现和实验室检査】 β地中海贫血 根据病情轻重的不同，分为以下三型。 实验室检查:成熟红细胞有轻度形态改变，红细胞渗透脆性正常或减低，血红蛋白电泳显示HbA2 含量增高（0. 035 ~ 0.060),这是本型的特点。';

MERGE (s:Entity {name: 'β地中海贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '成熟红细胞有轻度形态改变'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'β地中海贫血'}), (o:Entity {name: '成熟红细胞有轻度形态改变'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【临床表现和实验室检査】 β地中海贫血 根据病情轻重的不同，分为以下三型。 实验室检查:成熟红细胞有轻度形态改变，红细胞渗透脆性正常或减低，血红蛋白电泳显示HbA2 含量增高（0. 035 ~ 0.060),这是本型的特点。';

MERGE (s:Entity {name: 'β地中海贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '红细胞渗透脆性正常或减低'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'β地中海贫血'}), (o:Entity {name: '红细胞渗透脆性正常或减低'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【临床表现和实验室检査】 β地中海贫血 根据病情轻重的不同，分为以下三型。 实验室检查:成熟红细胞有轻度形态改变，红细胞渗透脆性正常或减低，血红蛋白电泳显示HbA2 含量增高（0. 035 ~ 0.060),这是本型的特点。';

MERGE (s:Entity {name: 'β地中海贫血'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血红蛋白电泳'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'β地中海贫血'}), (o:Entity {name: '血红蛋白电泳'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '【临床表现和实验室检査】 β地中海贫血 根据病情轻重的不同，分为以下三型。 实验室检查:成熟红细胞有轻度形态改变，红细胞渗透脆性正常或减低，血红蛋白电泳显示HbA2 含量增高（0. 035 ~ 0.060),这是本型的特点。';

MERGE (s:Entity {name: '儿童糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '运动治疗'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '儿童糖尿病'}), (o:Entity {name: '运动治疗'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '【治疗】 儿童糖尿病强调综合治疗，应加强对患者或者家庭的健康教育，使患儿能长期维持血糖接近正常水平，保证儿童获得正常的生活和活动。 3.运动治疗 运动对糖尿病患儿至关重要，是儿童正常生长发育所必须的生活内容，不要限制糖尿病患儿参加任何形式的';

MERGE (s:Entity {name: '儿童糖尿病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '综合治疗'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '儿童糖尿病'}), (o:Entity {name: '综合治疗'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '【治疗】 儿童糖尿病强调综合治疗，应加强对患者或者家庭的健康教育，使患儿能长期维持血糖接近正常水平，保证儿童获得正常的生活和活动。 3.运动治疗 运动对糖尿病患儿至关重要，是儿童正常生长发育所必须的生活内容，不要限制糖尿病患儿参加任何形式的';

MERGE (s:Entity {name: '广泛性焦虑障碍'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '气短'})
  SET o.type = '症状';
MATCH (s:Entity {name: '广泛性焦虑障碍'}), (o:Entity {name: '气短'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '广泛性焦虑障碍@结果 正常 ### 肺功能检查 检查 结果 检查 如果患者焦虑症状考虑为气短所致则需完善该检查排除肺部疾病。广泛性焦虑障碍@ 此种情况较少见。';

MERGE (s:Entity {name: '广泛性焦虑障碍'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺功能检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '广泛性焦虑障碍'}), (o:Entity {name: '肺功能检查'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '广泛性焦虑障碍@结果 正常 ### 肺功能检查 检查 结果 检查 如果患者焦虑症状考虑为气短所致则需完善该检查排除肺部疾病。广泛性焦虑障碍@ 此种情况较少见。';

MERGE (s:Entity {name: '前列腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '尿液生物标志物 检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '前列腺癌'}), (o:Entity {name: '尿液生物标志物 检查'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '前列腺癌@结果 异常细胞 ### 尿液生物标志物 检查 结果 检查 很多研究证实，通过尿液检测前列腺癌，在技术上是可行的，但很少有标志物得到了多个大样本研究的验证。 前列腺癌@结果 检测到特殊标志物 ### 血清标志物 检查 结果 检查 遗';

MERGE (s:Entity {name: '前列腺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血清标志物 检查'})
  SET o.type = '检查';
MATCH (s:Entity {name: '前列腺癌'}), (o:Entity {name: '血清标志物 检查'})
MERGE (s)-[r:RELATED_TO {predicate: '实验室检查'}]->(o) SET r.source = '前列腺癌@结果 异常细胞 ### 尿液生物标志物 检查 结果 检查 很多研究证实，通过尿液检测前列腺癌，在技术上是可行的，但很少有标志物得到了多个大样本研究的验证。 前列腺癌@结果 检测到特殊标志物 ### 血清标志物 检查 结果 检查 遗';

MERGE (s:Entity {name: '硬皮病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'scleroderma'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '硬皮病'}), (o:Entity {name: 'scleroderma'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '第十三章 硬皮病 【概述】 硬皮病（scleroderma）是儿童时期少见的慢性结缔组织病。 主要病理表现结缔组织炎性细胞浸润，血管内膜增生，血管壁萎缩、纤维化，结果造成管腔狭窄或闭塞。';

MERGE (s:Entity {name: '慢性结缔组织病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '硬皮病'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性结缔组织病'}), (o:Entity {name: '硬皮病'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第十三章 硬皮病 【概述】 硬皮病（scleroderma）是儿童时期少见的慢性结缔组织病。 主要病理表现结缔组织炎性细胞浸润，血管内膜增生，血管壁萎缩、纤维化，结果造成管腔狭窄或闭塞。';

MERGE (s:Entity {name: '硬皮病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '结缔组织炎性细胞浸润'})
  SET o.type = '症状';
MATCH (s:Entity {name: '硬皮病'}), (o:Entity {name: '结缔组织炎性细胞浸润'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第十三章 硬皮病 【概述】 硬皮病（scleroderma）是儿童时期少见的慢性结缔组织病。 主要病理表现结缔组织炎性细胞浸润，血管内膜增生，血管壁萎缩、纤维化，结果造成管腔狭窄或闭塞。';

MERGE (s:Entity {name: '硬皮病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血管内膜增生'})
  SET o.type = '症状';
MATCH (s:Entity {name: '硬皮病'}), (o:Entity {name: '血管内膜增生'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第十三章 硬皮病 【概述】 硬皮病（scleroderma）是儿童时期少见的慢性结缔组织病。 主要病理表现结缔组织炎性细胞浸润，血管内膜增生，血管壁萎缩、纤维化，结果造成管腔狭窄或闭塞。';

MERGE (s:Entity {name: '硬皮病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血管壁萎缩、纤维化'})
  SET o.type = '症状';
MATCH (s:Entity {name: '硬皮病'}), (o:Entity {name: '血管壁萎缩、纤维化'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '第十三章 硬皮病 【概述】 硬皮病（scleroderma）是儿童时期少见的慢性结缔组织病。 主要病理表现结缔组织炎性细胞浸润，血管内膜增生，血管壁萎缩、纤维化，结果造成管腔狭窄或闭塞。';

MERGE (s:Entity {name: '慢性结缔组织病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '管腔狭窄或闭塞'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '慢性结缔组织病'}), (o:Entity {name: '管腔狭窄或闭塞'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '第十三章 硬皮病 【概述】 硬皮病（scleroderma）是儿童时期少见的慢性结缔组织病。 主要病理表现结缔组织炎性细胞浸润，血管内膜增生，血管壁萎缩、纤维化，结果造成管腔狭窄或闭塞。';

MERGE (s:Entity {name: '白内障'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '眼内压测量'})
  SET o.type = '检查';
MATCH (s:Entity {name: '白内障'}), (o:Entity {name: '眼内压测量'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '白内障@初始眼科评估还包括眼内压测量。';

MERGE (s:Entity {name: '急性膀胱炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '非那吡啶'})
  SET o.type = '药物';
MATCH (s:Entity {name: '急性膀胱炎'}), (o:Entity {name: '非那吡啶'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '急性膀胱炎@附加 –   尿痛症状的缓解 针对经选择患者组部分患者的治疗推荐 #### 第一选择 [ 非那吡啶 ](/druglink?dd=MARTINDALE) open_in_new : 需要时，每次口服 200mg，每日三次，共';

MERGE (s:Entity {name: '急性膀胱炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '尿痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '急性膀胱炎'}), (o:Entity {name: '尿痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '急性膀胱炎@附加 –   尿痛症状的缓解 针对经选择患者组部分患者的治疗推荐 #### 第一选择 [ 非那吡啶 ](/druglink?dd=MARTINDALE) open_in_new : 需要时，每次口服 200mg，每日三次，共';

MERGE (s:Entity {name: '失眠症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '非药物干预'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '失眠症'}), (o:Entity {name: '非药物干预'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '失眠症@当在临床医生的指导下进行时，非药物干预是有益的。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '苯丙酮尿症'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '苯丙酮尿症'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '苯丙氨酸羟化酶缺乏'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '苯丙氨酸羟化酶缺乏'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '酪氨酸及正常代谢产物减少'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '酪氨酸及正常代谢产物减少'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '血Phe含量增加'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '血Phe含量增加'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '刺激转氨酶发育'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '刺激转氨酶发育'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '次要代谢途径增强'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '次要代谢途径增强'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: '苯丙酮尿症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '黑色素合成障碍'})
  SET o.type = '症状';
MATCH (s:Entity {name: '苯丙酮尿症'}), (o:Entity {name: '黑色素合成障碍'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = 'PKU患者苯丙氨酸羟化酶缺乏，酪氨酸及正常代谢产物减少，血Phe含量增加，刺激转氨酶发育，次要代谢途径增强，生成苯丙酮酸、苯乙酸和苯乳酸，并从尿中大量排出，故称苯丙酮尿症。高浓度的Phe及其异常代谢产物抑制酪氨酸酶，使黑色素合成障碍。';

MERGE (s:Entity {name: '乳腺原位癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '乳腺导管原位癌'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '乳腺原位癌'}), (o:Entity {name: '乳腺导管原位癌'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '乳腺原位癌@乳腺导管原位癌的其他不常见症状包括乳头溢液或乳房肿块。乳腺原位癌@ 诊断为 DCIS 男性的首发症状通常是乳头血性分泌物。';

MERGE (s:Entity {name: '乳腺导管原位癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '乳头溢液'})
  SET o.type = '症状';
MATCH (s:Entity {name: '乳腺导管原位癌'}), (o:Entity {name: '乳头溢液'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '乳腺原位癌@乳腺导管原位癌的其他不常见症状包括乳头溢液或乳房肿块。乳腺原位癌@ 诊断为 DCIS 男性的首发症状通常是乳头血性分泌物。';

MERGE (s:Entity {name: '乳腺导管原位癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '乳房肿块'})
  SET o.type = '症状';
MATCH (s:Entity {name: '乳腺导管原位癌'}), (o:Entity {name: '乳房肿块'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '乳腺原位癌@乳腺导管原位癌的其他不常见症状包括乳头溢液或乳房肿块。乳腺原位癌@ 诊断为 DCIS 男性的首发症状通常是乳头血性分泌物。';

MERGE (s:Entity {name: 'DCIS'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '乳头血性分泌物'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'DCIS'}), (o:Entity {name: '乳头血性分泌物'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '乳腺原位癌@乳腺导管原位癌的其他不常见症状包括乳头溢液或乳房肿块。乳腺原位癌@ 诊断为 DCIS 男性的首发症状通常是乳头血性分泌物。';

MERGE (s:Entity {name: '乳腺导管原位癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'DCIS'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '乳腺导管原位癌'}), (o:Entity {name: 'DCIS'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '乳腺原位癌@乳腺导管原位癌的其他不常见症状包括乳头溢液或乳房肿块。乳腺原位癌@ 诊断为 DCIS 男性的首发症状通常是乳头血性分泌物。';

MERGE (s:Entity {name: '基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '毛发上皮瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '基底细胞癌'}), (o:Entity {name: '毛发上皮瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '基底细胞癌@### 毛发上皮瘤/毛胚细胞瘤 体征/症状 检查 体征/症状 两者皆为良性滤泡性上皮肿瘤，形成乳头状间叶细胞体，滤泡单位与毛囊球相似。';

MERGE (s:Entity {name: '基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '毛胚细胞瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '基底细胞癌'}), (o:Entity {name: '毛胚细胞瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '基底细胞癌@### 毛发上皮瘤/毛胚细胞瘤 体征/症状 检查 体征/症状 两者皆为良性滤泡性上皮肿瘤，形成乳头状间叶细胞体，滤泡单位与毛囊球相似。';

MERGE (s:Entity {name: '良性滤泡性上皮肿瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '毛发上皮瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '良性滤泡性上皮肿瘤'}), (o:Entity {name: '毛发上皮瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '基底细胞癌@### 毛发上皮瘤/毛胚细胞瘤 体征/症状 检查 体征/症状 两者皆为良性滤泡性上皮肿瘤，形成乳头状间叶细胞体，滤泡单位与毛囊球相似。';

MERGE (s:Entity {name: '良性滤泡性上皮肿瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '毛胚细胞瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '良性滤泡性上皮肿瘤'}), (o:Entity {name: '毛胚细胞瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '基底细胞癌@### 毛发上皮瘤/毛胚细胞瘤 体征/症状 检查 体征/症状 两者皆为良性滤泡性上皮肿瘤，形成乳头状间叶细胞体，滤泡单位与毛囊球相似。';

MERGE (s:Entity {name: '毛发上皮瘤'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '毛胚细胞瘤'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '毛发上皮瘤'}), (o:Entity {name: '毛胚细胞瘤'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '基底细胞癌@### 毛发上皮瘤/毛胚细胞瘤 体征/症状 检查 体征/症状 两者皆为良性滤泡性上皮肿瘤，形成乳头状间叶细胞体，滤泡单位与毛囊球相似。';

MERGE (s:Entity {name: '宫颈癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '根治性子宫切除术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '宫颈癌'}), (o:Entity {name: '根治性子宫切除术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '宫颈癌@已经表明，根治性子宫切除术后进行辅助放疗可增加治疗相关并发症的风险，并且不改善无疾病进展生存期或总生存期。 宫颈癌@### 非妊娠IIB-IVA期：局部晚期宫颈癌 查看全部   首选 –   放化疗 #### 第一选择 [ ';

MERGE (s:Entity {name: '宫颈癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '放疗'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '宫颈癌'}), (o:Entity {name: '放疗'})
MERGE (s)-[r:RELATED_TO {predicate: '放射治疗'}]->(o) SET r.source = '宫颈癌@已经表明，根治性子宫切除术后进行辅助放疗可增加治疗相关并发症的风险，并且不改善无疾病进展生存期或总生存期。 宫颈癌@### 非妊娠IIB-IVA期：局部晚期宫颈癌 查看全部   首选 –   放化疗 #### 第一选择 [ ';

MERGE (s:Entity {name: '宫颈癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '顺铂'})
  SET o.type = '药物';
MATCH (s:Entity {name: '宫颈癌'}), (o:Entity {name: '顺铂'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '宫颈癌@已经表明，根治性子宫切除术后进行辅助放疗可增加治疗相关并发症的风险，并且不改善无疾病进展生存期或总生存期。 宫颈癌@### 非妊娠IIB-IVA期：局部晚期宫颈癌 查看全部   首选 –   放化疗 #### 第一选择 [ ';

MERGE (s:Entity {name: '宫颈癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '羟基脲'})
  SET o.type = '药物';
MATCH (s:Entity {name: '宫颈癌'}), (o:Entity {name: '羟基脲'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '宫颈癌@已经表明，根治性子宫切除术后进行辅助放疗可增加治疗相关并发症的风险，并且不改善无疾病进展生存期或总生存期。 宫颈癌@### 非妊娠IIB-IVA期：局部晚期宫颈癌 查看全部   首选 –   放化疗 #### 第一选择 [ ';

MERGE (s:Entity {name: '宫颈癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '氟尿嘧啶'})
  SET o.type = '药物';
MATCH (s:Entity {name: '宫颈癌'}), (o:Entity {name: '氟尿嘧啶'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '宫颈癌@已经表明，根治性子宫切除术后进行辅助放疗可增加治疗相关并发症的风险，并且不改善无疾病进展生存期或总生存期。 宫颈癌@### 非妊娠IIB-IVA期：局部晚期宫颈癌 查看全部   首选 –   放化疗 #### 第一选择 [ ';

MERGE (s:Entity {name: '18-三体综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '食管气管瘘'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '18-三体综合征'}), (o:Entity {name: '食管气管瘘'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '18-三体综合征@还可出现食管气管瘘。18-三体综合征@右肺异常分叶或缺如。';

MERGE (s:Entity {name: '18-三体综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '右肺异常分叶或缺如'})
  SET o.type = '症状';
MATCH (s:Entity {name: '18-三体综合征'}), (o:Entity {name: '右肺异常分叶或缺如'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '18-三体综合征@还可出现食管气管瘘。18-三体综合征@右肺异常分叶或缺如。';

MERGE (s:Entity {name: '非惊厥性 SE'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '意识障碍'})
  SET o.type = '症状';
MATCH (s:Entity {name: '非惊厥性 SE'}), (o:Entity {name: '意识障碍'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '癫痫持续状态@诊断非惊厥性 SE 很难，但是识别很重要，因为快速阻止有助于防止严重脑损伤，尤其对意识障碍的患者。';

MERGE (s:Entity {name: '癫痫持续状态'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '非惊厥性 SE'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '癫痫持续状态'}), (o:Entity {name: '非惊厥性 SE'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '癫痫持续状态@诊断非惊厥性 SE 很难，但是识别很重要，因为快速阻止有助于防止严重脑损伤，尤其对意识障碍的患者。';

MERGE (s:Entity {name: '胱氨酸病'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '慢性TIN'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胱氨酸病'}), (o:Entity {name: '慢性TIN'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '慢性TIN'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '草酸盐过度产生'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '慢性TIN'}), (o:Entity {name: '草酸盐过度产生'})
MERGE (s)-[r:RELATED_TO {predicate: '发病机制'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '慢性TIN'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾排出草酸盐增多'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '慢性TIN'}), (o:Entity {name: '肾排出草酸盐增多'})
MERGE (s)-[r:RELATED_TO {predicate: '发病机制'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '慢性TIN'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾小管内草酸钙结晶沉积'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '慢性TIN'}), (o:Entity {name: '肾小管内草酸钙结晶沉积'})
MERGE (s)-[r:RELATED_TO {predicate: '发病机制'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '慢性TIN'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '小肠过度吸收'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '慢性TIN'}), (o:Entity {name: '小肠过度吸收'})
MERGE (s)-[r:RELATED_TO {predicate: '病理生理'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '慢性TIN'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '受累小管萎缩'})
  SET o.type = '症状';
MATCH (s:Entity {name: '慢性TIN'}), (o:Entity {name: '受累小管萎缩'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '慢性TIN'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '周围炎症细胞浸润和纤维化'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '慢性TIN'}), (o:Entity {name: '周围炎症细胞浸润和纤维化'})
MERGE (s)-[r:RELATED_TO {predicate: '病理生理'}]->(o) SET r.source = '在小儿时期慢性TIN还可由代谢病引起，如①胱氨酸病：见本章第四节。②草酸盐过度产生或小肠过度吸收，造成肾排出草酸盐增多，则肾小管内草酸钙结晶沉积，受累小管萎缩，周围炎症细胞浸润和纤维化。';

MERGE (s:Entity {name: '类癌危象'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '奥曲肽'})
  SET o.type = '药物';
MATCH (s:Entity {name: '类癌危象'}), (o:Entity {name: '奥曲肽'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '类癌综合征@患者还需要输注奥曲肽以防止类癌危象，应用时间是手术开始前至少 2 小时，直到手术后 48 小时。';

MERGE (s:Entity {name: '类癌综合征'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '类癌危象'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '类癌综合征'}), (o:Entity {name: '类癌危象'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '类癌综合征@患者还需要输注奥曲肽以防止类癌危象，应用时间是手术开始前至少 2 小时，直到手术后 48 小时。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '新生儿筛查'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '新生儿筛查'})
MERGE (s)-[r:RELATED_TO {predicate: '筛查'}]->(o) SET r.source = '【实验室检查】 1.新生儿筛查 新生儿期的PKU患儿无任何临床表现，生后3个月后才渐渐出现PKU的表现。 6.脑电图 约80%病儿有脑电图异常，可表现为高峰节律紊乱及灶性棘波等。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑电图'})
  SET o.type = '检查';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '脑电图'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助检查'}]->(o) SET r.source = '【实验室检查】 1.新生儿筛查 新生儿期的PKU患儿无任何临床表现，生后3个月后才渐渐出现PKU的表现。 6.脑电图 约80%病儿有脑电图异常，可表现为高峰节律紊乱及灶性棘波等。';

MERGE (s:Entity {name: 'PKU'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脑电图异常'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'PKU'}), (o:Entity {name: '脑电图异常'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【实验室检查】 1.新生儿筛查 新生儿期的PKU患儿无任何临床表现，生后3个月后才渐渐出现PKU的表现。 6.脑电图 约80%病儿有脑电图异常，可表现为高峰节律紊乱及灶性棘波等。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '咳嗽'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '咳嗽'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸闷'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '胸闷'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸痛'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '胸痛'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '上腹痛明显'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '上腹痛明显'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '痰中带血'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '痰中带血'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺内囊肿、脓肿可穿破至胸腔'})
  SET o.type = '症状';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '肺内囊肿、脓肿可穿破至胸腔'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸水'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '胸水'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脓胸'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '脓胸'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '胸膜炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '脓气胸'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '胸膜炎'}), (o:Entity {name: '脓气胸'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '初期即发生胸膜炎者，有咳嗽、胸闷，胸痛及上腹痛明显，可痰中带血。肺内囊肿、脓肿可穿破至胸腔，发生胸水、脓胸或脓气胸等体征。';

MERGE (s:Entity {name: '高血压'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '年龄偏大者'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '高血压'}), (o:Entity {name: '年龄偏大者'})
MERGE (s)-[r:RELATED_TO {predicate: '多发群体'}]->(o) SET r.source = '高血压好发于年龄偏大者，成人占20%，儿童仅5%。';

MERGE (s:Entity {name: '非小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肺部'})
  SET o.type = '部位';
MATCH (s:Entity {name: '非小细胞肺癌'}), (o:Entity {name: '肺部'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = '非小细胞肺癌@可经开胸术达到肺部，然而，微创手术（如胸腔镜手术）凭借其住院周期短和术后疼痛轻而越来越普遍。';

MERGE (s:Entity {name: '非小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸腔镜手术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '非小细胞肺癌'}), (o:Entity {name: '胸腔镜手术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '非小细胞肺癌@可经开胸术达到肺部，然而，微创手术（如胸腔镜手术）凭借其住院周期短和术后疼痛轻而越来越普遍。';

MERGE (s:Entity {name: '非小细胞肺癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '开胸术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '非小细胞肺癌'}), (o:Entity {name: '开胸术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '非小细胞肺癌@可经开胸术达到肺部，然而，微创手术（如胸腔镜手术）凭借其住院周期短和术后疼痛轻而越来越普遍。';

MERGE (s:Entity {name: 'B族链球菌感染'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '癫痫'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'B族链球菌感染'}), (o:Entity {name: '癫痫'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = 'B族链球菌感染@ ### 癫痫发作 | 短期 | 低 可见于 B族链球菌感染性脑膜患者，应给予苯二氮卓类或抗惊厥药物治疗。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '苯二氮卓类'})
  SET o.type = '药物';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '苯二氮卓类'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = 'B族链球菌感染@ ### 癫痫发作 | 短期 | 低 可见于 B族链球菌感染性脑膜患者，应给予苯二氮卓类或抗惊厥药物治疗。';

MERGE (s:Entity {name: '癫痫'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗惊厥药物'})
  SET o.type = '药物';
MATCH (s:Entity {name: '癫痫'}), (o:Entity {name: '抗惊厥药物'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = 'B族链球菌感染@ ### 癫痫发作 | 短期 | 低 可见于 B族链球菌感染性脑膜患者，应给予苯二氮卓类或抗惊厥药物治疗。';

MERGE (s:Entity {name: '磨牙症'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '张大嘴巴伸展颌肌'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '磨牙症'}), (o:Entity {name: '张大嘴巴伸展颌肌'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '磨牙症@例如，通过张大嘴巴伸展颌肌，每日一次或两次，每次重复 10 遍，可对缓解症状有所助益。';

MERGE (s:Entity {name: '基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Mohs手术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '基底细胞癌'}), (o:Entity {name: 'Mohs手术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '基底细胞癌@合理应用Mohs手术进行治疗的复发率很低（2%至5%），并且除了可以应用在影响美观的部位，Mohs手术也考虑作为大的硬斑病型基底细胞癌，或边界不清的基底细胞癌的治疗手段。';

MERGE (s:Entity {name: '基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '2%至5%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '基底细胞癌'}), (o:Entity {name: '2%至5%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '基底细胞癌@合理应用Mohs手术进行治疗的复发率很低（2%至5%），并且除了可以应用在影响美观的部位，Mohs手术也考虑作为大的硬斑病型基底细胞癌，或边界不清的基底细胞癌的治疗手段。';

MERGE (s:Entity {name: '大的硬斑病型基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Mohs手术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '大的硬斑病型基底细胞癌'}), (o:Entity {name: 'Mohs手术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '基底细胞癌@合理应用Mohs手术进行治疗的复发率很低（2%至5%），并且除了可以应用在影响美观的部位，Mohs手术也考虑作为大的硬斑病型基底细胞癌，或边界不清的基底细胞癌的治疗手段。';

MERGE (s:Entity {name: '边界不清的基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'Mohs手术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '边界不清的基底细胞癌'}), (o:Entity {name: 'Mohs手术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '基底细胞癌@合理应用Mohs手术进行治疗的复发率很低（2%至5%），并且除了可以应用在影响美观的部位，Mohs手术也考虑作为大的硬斑病型基底细胞癌，或边界不清的基底细胞癌的治疗手段。';

MERGE (s:Entity {name: '基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '大的硬斑病型基底细胞癌'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '基底细胞癌'}), (o:Entity {name: '大的硬斑病型基底细胞癌'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '基底细胞癌@合理应用Mohs手术进行治疗的复发率很低（2%至5%），并且除了可以应用在影响美观的部位，Mohs手术也考虑作为大的硬斑病型基底细胞癌，或边界不清的基底细胞癌的治疗手段。';

MERGE (s:Entity {name: '基底细胞癌'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '边界不清的基底细胞癌'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '基底细胞癌'}), (o:Entity {name: '边界不清的基底细胞癌'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '基底细胞癌@合理应用Mohs手术进行治疗的复发率很低（2%至5%），并且除了可以应用在影响美观的部位，Mohs手术也考虑作为大的硬斑病型基底细胞癌，或边界不清的基底细胞癌的治疗手段。';

MERGE (s:Entity {name: '大动脉炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '胸部X线片'})
  SET o.type = '检查';
MATCH (s:Entity {name: '大动脉炎'}), (o:Entity {name: '胸部X线片'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '大动脉炎@ 胸部X线片可显示主动脉钙化或主动脉增宽，超声波检查可显示周围动脉或主动脉等狭窄部位及程度，动脉造影和MRI可显示狭窄或扩张的部位及程度，以及血流减少的程度。';

MERGE (s:Entity {name: '大动脉炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '主动脉钙化'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '大动脉炎'}), (o:Entity {name: '主动脉钙化'})
MERGE (s)-[r:RELATED_TO {predicate: '相关（导致）'}]->(o) SET r.source = '大动脉炎@ 胸部X线片可显示主动脉钙化或主动脉增宽，超声波检查可显示周围动脉或主动脉等狭窄部位及程度，动脉造影和MRI可显示狭窄或扩张的部位及程度，以及血流减少的程度。';

MERGE (s:Entity {name: '大动脉炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '主动脉增宽'})
  SET o.type = '症状';
MATCH (s:Entity {name: '大动脉炎'}), (o:Entity {name: '主动脉增宽'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '大动脉炎@ 胸部X线片可显示主动脉钙化或主动脉增宽，超声波检查可显示周围动脉或主动脉等狭窄部位及程度，动脉造影和MRI可显示狭窄或扩张的部位及程度，以及血流减少的程度。';

MERGE (s:Entity {name: '大动脉炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '动脉造影'})
  SET o.type = '检查';
MATCH (s:Entity {name: '大动脉炎'}), (o:Entity {name: '动脉造影'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '大动脉炎@ 胸部X线片可显示主动脉钙化或主动脉增宽，超声波检查可显示周围动脉或主动脉等狭窄部位及程度，动脉造影和MRI可显示狭窄或扩张的部位及程度，以及血流减少的程度。';

MERGE (s:Entity {name: '大动脉炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'MRI'})
  SET o.type = '检查';
MATCH (s:Entity {name: '大动脉炎'}), (o:Entity {name: 'MRI'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '大动脉炎@ 胸部X线片可显示主动脉钙化或主动脉增宽，超声波检查可显示周围动脉或主动脉等狭窄部位及程度，动脉造影和MRI可显示狭窄或扩张的部位及程度，以及血流减少的程度。';

MERGE (s:Entity {name: '大动脉炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '超声波'})
  SET o.type = '检查';
MATCH (s:Entity {name: '大动脉炎'}), (o:Entity {name: '超声波'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '大动脉炎@ 胸部X线片可显示主动脉钙化或主动脉增宽，超声波检查可显示周围动脉或主动脉等狭窄部位及程度，动脉造影和MRI可显示狭窄或扩张的部位及程度，以及血流减少的程度。';

MERGE (s:Entity {name: 'GER'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '促胃肠动力药'})
  SET o.type = '药物';
MATCH (s:Entity {name: 'GER'}), (o:Entity {name: '促胃肠动力药'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '【治疗】 凡诊断为GER的患儿，特别是有合并症或影响生长发育者必须及时进行治疗。 促胃肠动力药(prokinetic agents):疗程4周。';

MERGE (s:Entity {name: 'prokinetic agents'})
  SET s.type = '药物';
MERGE (o:Entity {name: '促胃肠动力药'})
  SET o.type = '药物';
MATCH (s:Entity {name: 'prokinetic agents'}), (o:Entity {name: '促胃肠动力药'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '【治疗】 凡诊断为GER的患儿，特别是有合并症或影响生长发育者必须及时进行治疗。 促胃肠动力药(prokinetic agents):疗程4周。';

MERGE (s:Entity {name: 'GER'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '影响生长发育'})
  SET o.type = '症状';
MATCH (s:Entity {name: 'GER'}), (o:Entity {name: '影响生长发育'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '【治疗】 凡诊断为GER的患儿，特别是有合并症或影响生长发育者必须及时进行治疗。 促胃肠动力药(prokinetic agents):疗程4周。';

MERGE (s:Entity {name: '急性阑尾炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '静脉输液'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '急性阑尾炎'}), (o:Entity {name: '静脉输液'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '急性阑尾炎@应当开始静脉输液，例如给予乳酸林格氏液。 急性阑尾炎@不应延误实施阑尾切除术。';

MERGE (s:Entity {name: '急性阑尾炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '阑尾切除术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '急性阑尾炎'}), (o:Entity {name: '阑尾切除术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '急性阑尾炎@应当开始静脉输液，例如给予乳酸林格氏液。 急性阑尾炎@不应延误实施阑尾切除术。';

MERGE (s:Entity {name: '急性阑尾炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '乳酸林格氏液'})
  SET o.type = '药物';
MATCH (s:Entity {name: '急性阑尾炎'}), (o:Entity {name: '乳酸林格氏液'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '急性阑尾炎@应当开始静脉输液，例如给予乳酸林格氏液。 急性阑尾炎@不应延误实施阑尾切除术。';

MERGE (s:Entity {name: '类风湿关节炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '泼尼松龙'})
  SET o.type = '药物';
MATCH (s:Entity {name: '类风湿关节炎'}), (o:Entity {name: '泼尼松龙'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '类风湿关节炎@常用的治疗方案为每日口服小剂量泼尼松龙（≤5mg），每日剂量很少需要超过10mg。';

MERGE (s:Entity {name: 'JIA'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '15%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: 'JIA'}), (o:Entity {name: '15%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: 'JIA'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '多关节型JIA'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'JIA'}), (o:Entity {name: '多关节型JIA'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: 'JIA'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '少关节型'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'JIA'}), (o:Entity {name: '少关节型'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: 'JIA'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '全身型'})
  SET o.type = '疾病';
MATCH (s:Entity {name: 'JIA'}), (o:Entity {name: '全身型'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: 'JIA'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '隐匿性IgM型类风湿因子'})
  SET o.type = '社会学';
MATCH (s:Entity {name: 'JIA'}), (o:Entity {name: '隐匿性IgM型类风湿因子'})
MERGE (s)-[r:RELATED_TO {predicate: '病因'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: '多关节型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '80. 0%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '多关节型'}), (o:Entity {name: '80. 0%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: '少关节型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '71. 4%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '少关节型'}), (o:Entity {name: '71. 4%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: '全身型'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '58. 8%'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '全身型'}), (o:Entity {name: '58. 8%'})
MERGE (s)-[r:RELATED_TO {predicate: '发病率'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: '隐匿性IgM型类风湿因子'})
  SET s.type = '社会学';
MERGE (o:Entity {name: 'HIgM-RF'})
  SET o.type = '社会学';
MATCH (s:Entity {name: '隐匿性IgM型类风湿因子'}), (o:Entity {name: 'HIgM-RF'})
MERGE (s)-[r:RELATED_TO {predicate: '同义词'}]->(o) SET r.source = '而在JIA总体阳性率不足15%，主要出现在多关节型JIA之中，RF阴性并不能除外诊断JIA。 2.隐匿性IgM型类风湿因子（HIgM-RF） 有发现HIgM-RF在JIA中有较高的检出率（71. 4%），其中多关节型阳性率为80. 0%，少';

MERGE (s:Entity {name: '肾上腺功能不全'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '葡萄糖'})
  SET o.type = '药物';
MATCH (s:Entity {name: '肾上腺功能不全'}), (o:Entity {name: '葡萄糖'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '如病人有肾上腺功能不全，常需要葡萄糖、钾及肾上腺皮质激素的补充。';

MERGE (s:Entity {name: '肾上腺功能不全'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '钾'})
  SET o.type = '药物';
MATCH (s:Entity {name: '肾上腺功能不全'}), (o:Entity {name: '钾'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '如病人有肾上腺功能不全，常需要葡萄糖、钾及肾上腺皮质激素的补充。';

MERGE (s:Entity {name: '肾上腺功能不全'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肾上腺皮质激素'})
  SET o.type = '药物';
MATCH (s:Entity {name: '肾上腺功能不全'}), (o:Entity {name: '肾上腺皮质激素'})
MERGE (s)-[r:RELATED_TO {predicate: '药物治疗'}]->(o) SET r.source = '如病人有肾上腺功能不全，常需要葡萄糖、钾及肾上腺皮质激素的补充。';

MERGE (s:Entity {name: '单纯型膨出'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '异位型输尿管膨出'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '单纯型膨出'}), (o:Entity {name: '异位型输尿管膨出'})
MERGE (s)-[r:RELATED_TO {predicate: '鉴别诊断'}]->(o) SET r.source = '单纯型膨出在其基底部做一横行切口，约0. 5～0. 8cm左右即可；异位型输尿管膨出则在其最下端纵行切开0. 5～0. 8cm。如效果不满意或出现反流，应做膨出切除及抗反流性输尿管膀胱再吻合术，并同时修复输尿管膨出后侧薄弱的膀胱壁。';

MERGE (s:Entity {name: '异位型输尿管膨出'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '膨出切除'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '异位型输尿管膨出'}), (o:Entity {name: '膨出切除'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '单纯型膨出在其基底部做一横行切口，约0. 5～0. 8cm左右即可；异位型输尿管膨出则在其最下端纵行切开0. 5～0. 8cm。如效果不满意或出现反流，应做膨出切除及抗反流性输尿管膀胱再吻合术，并同时修复输尿管膨出后侧薄弱的膀胱壁。';

MERGE (s:Entity {name: '异位型输尿管膨出'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '抗反流性输尿管膀胱再吻合术'})
  SET o.type = '手术治疗';
MATCH (s:Entity {name: '异位型输尿管膨出'}), (o:Entity {name: '抗反流性输尿管膀胱再吻合术'})
MERGE (s)-[r:RELATED_TO {predicate: '手术治疗'}]->(o) SET r.source = '单纯型膨出在其基底部做一横行切口，约0. 5～0. 8cm左右即可；异位型输尿管膨出则在其最下端纵行切开0. 5～0. 8cm。如效果不满意或出现反流，应做膨出切除及抗反流性输尿管膀胱再吻合术，并同时修复输尿管膨出后侧薄弱的膀胱壁。';

MERGE (s:Entity {name: '异位型输尿管膨出'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '反流'})
  SET o.type = '症状';
MATCH (s:Entity {name: '异位型输尿管膨出'}), (o:Entity {name: '反流'})
MERGE (s)-[r:RELATED_TO {predicate: '治疗后症状'}]->(o) SET r.source = '单纯型膨出在其基底部做一横行切口，约0. 5～0. 8cm左右即可；异位型输尿管膨出则在其最下端纵行切开0. 5～0. 8cm。如效果不满意或出现反流，应做膨出切除及抗反流性输尿管膀胱再吻合术，并同时修复输尿管膨出后侧薄弱的膀胱壁。';

MERGE (s:Entity {name: '异位型输尿管膨出'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '修复输尿管膨出后侧薄弱的膀胱壁'})
  SET o.type = '其他治疗';
MATCH (s:Entity {name: '异位型输尿管膨出'}), (o:Entity {name: '修复输尿管膨出后侧薄弱的膀胱壁'})
MERGE (s)-[r:RELATED_TO {predicate: '辅助治疗'}]->(o) SET r.source = '单纯型膨出在其基底部做一横行切口，约0. 5～0. 8cm左右即可；异位型输尿管膨出则在其最下端纵行切开0. 5～0. 8cm。如效果不满意或出现反流，应做膨出切除及抗反流性输尿管膀胱再吻合术，并同时修复输尿管膨出后侧薄弱的膀胱壁。';

MERGE (s:Entity {name: '遗传性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '5～10岁'})
  SET o.type = '流行病学';
MATCH (s:Entity {name: '遗传性胰腺炎'}), (o:Entity {name: '5～10岁'})
MERGE (s)-[r:RELATED_TO {predicate: '发病年龄'}]->(o) SET r.source = '遗传性胰腺炎起病年龄多见于5～10岁。CT或超声检查显示缩小的、钙化胰腺伴导管扩张。';

MERGE (s:Entity {name: '遗传性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: 'CT'})
  SET o.type = '检查';
MATCH (s:Entity {name: '遗传性胰腺炎'}), (o:Entity {name: 'CT'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '遗传性胰腺炎起病年龄多见于5～10岁。CT或超声检查显示缩小的、钙化胰腺伴导管扩张。';

MERGE (s:Entity {name: '遗传性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '超声'})
  SET o.type = '检查';
MATCH (s:Entity {name: '遗传性胰腺炎'}), (o:Entity {name: '超声'})
MERGE (s)-[r:RELATED_TO {predicate: '影像学检查'}]->(o) SET r.source = '遗传性胰腺炎起病年龄多见于5～10岁。CT或超声检查显示缩小的、钙化胰腺伴导管扩张。';

MERGE (s:Entity {name: '遗传性胰腺炎'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '缩小的、钙化胰腺伴导管扩张'})
  SET o.type = '症状';
MATCH (s:Entity {name: '遗传性胰腺炎'}), (o:Entity {name: '缩小的、钙化胰腺伴导管扩张'})
MERGE (s)-[r:RELATED_TO {predicate: '临床表现'}]->(o) SET r.source = '遗传性胰腺炎起病年龄多见于5～10岁。CT或超声检查显示缩小的、钙化胰腺伴导管扩张。';

MERGE (s:Entity {name: '右室双出口'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '室间隔缺损'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '右室双出口'}), (o:Entity {name: '室间隔缺损'})
MERGE (s)-[r:RELATED_TO {predicate: '并发症'}]->(o) SET r.source = '绝大多数的右室双出口伴有室间隔缺损，室间隔缺损可以是膜周型、肌部、远离大动脉或双动脉下。';

MERGE (s:Entity {name: '室间隔缺损'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '膜周型'})
  SET o.type = '疾病';
MATCH (s:Entity {name: '室间隔缺损'}), (o:Entity {name: '膜周型'})
MERGE (s)-[r:RELATED_TO {predicate: '病理分型'}]->(o) SET r.source = '绝大多数的右室双出口伴有室间隔缺损，室间隔缺损可以是膜周型、肌部、远离大动脉或双动脉下。';

MERGE (s:Entity {name: '室间隔缺损'})
  SET s.type = '疾病';
MERGE (o:Entity {name: '肌部'})
  SET o.type = '部位';
MATCH (s:Entity {name: '室间隔缺损'}), (o:Entity {name: '肌部'})
MERGE (s)-[r:RELATED_TO {predicate: '发病部位'}]->(o) SET r.source = '绝大多数的右室双出口伴有室间隔缺损，室间隔缺损可以是膜周型、肌部、远离大动脉或双动脉下。';
