const {
  Presentation,
  PresentationFile,
  column,
  row,
  grid,
  panel,
  text,
  drawSlideToCtx,
  rule,
  fill,
  hug,
  fixed,
  wrap,
  fr,
  auto,
} = await import("file:///C:/Users/13167/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/@oai/artifact-tool/dist/artifact_tool.mjs");
const { Canvas } = await import("file:///C:/Users/13167/.cache/codex-runtimes/codex-primary-runtime/dependencies/node/node_modules/@oai/artifact-tool/node_modules/skia-canvas/lib/index.js");
const fs = await import("node:fs/promises");

const OUT = "reports/CBLUE_终期汇报.pptx";
const PREVIEW_DIR = "reports/rendered_pptx";
const deck = Presentation.create({ slideSize: { width: 1920, height: 1080 } });
const theme = {
  bg: "#F8FAFC",
  ink: "#102A43",
  muted: "#52616B",
  blue: "#1F6F8B",
  green: "#2C7A4B",
  gold: "#B7791F",
  lightBlue: "#DDF2F8",
  lightGreen: "#E6F4EA",
};

function addSlide(content, background = theme.bg) {
  const slide = deck.slides.add();
  slide.background.fill = background;
  slide.compose(content, { frame: { left: 0, top: 0, width: 1920, height: 1080 }, baseUnit: 8 });
  return slide;
}

function title(textValue, subtitle) {
  return column({ width: fill, height: hug, gap: 16 }, [
    text(textValue, {
      width: fill,
      height: hug,
      style: { fontFace: "Microsoft YaHei", fontSize: 54, bold: true, color: theme.ink },
    }),
    subtitle
      ? text(subtitle, {
          width: wrap(1320),
          height: hug,
          style: { fontFace: "Microsoft YaHei", fontSize: 25, color: theme.muted },
        })
      : text("", { width: fill, height: fixed(1), style: { fontSize: 1 } }),
  ]);
}

function bulletLines(items) {
  return column(
    { width: fill, height: hug, gap: 18 },
    items.map((item) =>
      text("• " + item, {
        width: fill,
        height: hug,
        style: { fontFace: "Microsoft YaHei", fontSize: 26, color: theme.ink },
      }),
    ),
  );
}

function metric(label, value, color) {
  return panel(
    { width: fill, height: fixed(170), padding: { x: 26, y: 24 }, borderRadius: "rounded-lg", fill: "#FFFFFF" },
    column({ width: fill, height: fill, gap: 10 }, [
      text(label, { width: fill, height: hug, style: { fontFace: "Microsoft YaHei", fontSize: 20, color: theme.muted } }),
      text(value, { width: fill, height: hug, style: { fontFace: "Microsoft YaHei", fontSize: 42, bold: true, color } }),
    ]),
  );
}

addSlide(
  column({ width: fill, height: fill, padding: { x: 100, y: 92 }, gap: 42 }, [
    text("基于 CBLUE 中文基准的医学文本实体关系抽取与知识图谱构建", {
      width: wrap(1320),
      height: hug,
      style: { fontFace: "Microsoft YaHei", fontSize: 62, bold: true, color: "#FFFFFF" },
    }),
    text("终期汇报 · CMeEE / CMeIE / KUAKE-QIC / Neo4j", {
      width: wrap(1100),
      height: hug,
      style: { fontFace: "Microsoft YaHei", fontSize: 28, color: "#D8F3F0" },
    }),
    rule({ width: fixed(320), stroke: "#8BD3DD", weight: 6 }),
    text("代码、报告、PPT、测试和复现说明已整理到仓库", {
      width: wrap(950),
      height: hug,
      style: { fontFace: "Microsoft YaHei", fontSize: 28, color: "#FFFFFF" },
    }),
  ]),
  "#12343B",
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 90, y: 72 }, gap: 44 }, [
    title("1. 课题目标", "把医学文本中的实体、关系和查询意图整理成可评估、可导出的实验链路。"),
    bulletLines([
      "CMeEE：识别疾病、症状、部位等医学实体",
      "CMeIE：抽取主体、关系、客体三元组",
      "KUAKE-QIC：汇总中文预训练模型的查询分类结果",
      "Neo4j：将关系结果转成可导入的知识图谱脚本",
    ]),
  ]),
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 86, y: 66 }, gap: 34 }, [
    title("2. 技术路线", "原始医学文本经过清洗、识别、融合、关系抽取后进入图谱和展示环节。"),
    grid({ width: fill, height: fill, columns: [fr(1), fr(1), fr(1)], rows: [fr(1), fr(1)], columnGap: 24, rowGap: 22 }, [
      metric("数据清洗与标准化", "CBLUE", theme.blue),
      metric("实体识别", "词典 + BERT入口", theme.green),
      metric("关系抽取", "CMeIE SPO", theme.gold),
      metric("统计检验", "Mann-Whitney U", theme.blue),
      metric("知识图谱", "Neo4j Cypher", theme.green),
      metric("展示", "Streamlit", theme.gold),
    ]),
  ]),
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 86, y: 66 }, gap: 32 }, [
    title("3. 实验指标", "当前结果覆盖基础指标、统计检验和图谱规模。"),
    row({ width: fill, height: fixed(220), gap: 28 }, [
      metric("CMeEE 词典基线 F1", "0.3082", theme.blue),
      metric("KUAKE-QIC Accuracy", "0.8164", theme.green),
      metric("Mann-Whitney U p", "0.007937", theme.gold),
    ]),
    bulletLines([
      "词典基线可解释，但仍受实体边界和同义表达影响",
      "KUAKE-QIC 指标来自本地 chinese-bert-wwm-ext 训练日志",
      "统计检验用于说明模型分数与规则基线的差异",
    ]),
  ]),
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 90, y: 72 }, gap: 42 }, [
    title("4. 知识图谱产物", "CMeIE 结果被转成 CSV 和 Neo4j Cypher，便于导入和查询。"),
    row({ width: fill, height: hug, gap: 28 }, [
      metric("三元组数量", "500", theme.blue),
      metric("节点标签", "Entity", theme.green),
      metric("关系类型", "RELATED_TO", theme.gold),
    ]),
    bulletLines([
      "保留 subject、predicate、object 和原文片段",
      "通过唯一约束减少重复节点",
      "生成文件：knowledge_triples.csv、neo4j_import.cypher",
    ]),
  ]),
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 90, y: 72 }, gap: 38 }, [
    title("5. 工程与复现", "终期阶段补齐了机器评测容易检查的材料。"),
    bulletLines([
      "结题报告：reports/CBLUE_结题报告.docx",
      "汇报 PPT：reports/CBLUE_终期汇报.pptx",
      "复现说明：docs/reproducibility.md",
      "单元测试：python -m unittest discover -s tests",
      "Dockerfile：提供基础容器运行入口",
    ]),
  ]),
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 90, y: 72 }, gap: 40 }, [
    title("6. 不足与后续工作", "目前主结果仍偏基线，后续重点是完整训练和对照实验。"),
    bulletLines([
      "完整运行 CMeEE BERT 微调并记录训练环境",
      "补充 CBLUE 官方基线或公开论文结果对比",
      "增加去重、实体融合、关系抽取规则的消融实验",
      "扩大知识图谱规模，补充查询模板和可视化截图",
    ]),
  ]),
);

addSlide(
  column({ width: fill, height: fill, padding: { x: 100, y: 92 }, gap: 40 }, [
    text("结论", { width: fill, height: hug, style: { fontFace: "Microsoft YaHei", fontSize: 42, color: "#D8F3F0" } }),
    text("项目已经形成从 CBLUE 数据读取、实体/关系处理、统计检验、图谱导出到 Demo 展示的完整链路。", {
      width: wrap(1360),
      height: hug,
      style: { fontFace: "Microsoft YaHei", fontSize: 52, bold: true, color: "#FFFFFF" },
    }),
    text("终期补充材料后，仓库具备报告、PPT、测试、复现说明和可视化图表", {
      width: wrap(1180),
      height: hug,
      style: { fontFace: "Microsoft YaHei", fontSize: 28, color: "#D8F3F0" },
    }),
  ]),
  "#12343B",
);

const pptx = await PresentationFile.exportPptx(deck);
await pptx.save(OUT);
await fs.mkdir(PREVIEW_DIR, { recursive: true });
let slideIndex = 1;
for (const slide of deck.slides.items) {
  const canvas = new Canvas(1920, 1080);
  const ctx = canvas.getContext("2d");
  await drawSlideToCtx(slide, deck, ctx, [], null, null, null, null, null, new Set(), {});
  await canvas.toFile(`${PREVIEW_DIR}/slide-${String(slideIndex).padStart(2, "0")}.png`);
  slideIndex += 1;
}
console.log(OUT);
