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
