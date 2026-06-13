# Contributing

感谢你愿意为 `dev-workflow-kit` 贡献内容。

这个仓库的核心目标不是“堆很多 skill”，而是持续维护一套**边界清晰、可组合、可验证**的软件交付 workflow skills。

## 贡献范围

适合这个仓库的贡献通常包括：

- 新增 skill
- 修正现有 skill 的适用边界或 workflow
- 完善 README / examples / evals / references
- 提升 root router、catalog、design notes 的一致性

不太适合直接进入这个仓库的内容：

- 过度依赖某个具体项目内部约束的 skill
- 纯实现型代码片段集合
- 与已有 skill 高度重叠但没有清晰边界的新 skill

## 新 skill 的标准结构

每个 skill 一个目录，目录名使用**小写 kebab-case**。

每个 skill 至少包含：

```text
<skill-name>/
├── SKILL.md
├── README.md
├── evals/
│   └── evals.json
└── references/
    └── examples.md
```

## 新 skill 必须写清楚的内容

### `SKILL.md`
至少应包含：
- 适用场景
- 不适用场景
- workflow
- output
- coordination
- invocation examples

### `README.md`
至少应包含：
- 这个 skill 解决什么问题
- 适用场景
- 标准流程
- 推荐搭配
- 调用示例

### `evals/evals.json`
至少包含：
- 正向触发样例
- 负向不触发样例
- 如果有边界歧义，最好补一条路由歧义样例

### `references/examples.md`
提供真实 prompt 风格示例，帮助后续维护者理解边界。

## 根目录同步要求

如果你新增或显著调整一个 skill，通常还需要同步更新：

- `README.md`
- `SKILL.md`
- `references/skill-catalog.md`
- `references/design-notes.md`（如果改变了技能边界或扩展了能力版图）
- `evals/evals.json`（如果 root router 需要感知这个 skill）

## 命名与风格

- 目录和 skill 名称保持小写 kebab-case
- 不要为了“显得高级”而引入模糊命名
- skill 名称应该能从字面大致看出用途
- 优先写清楚边界，而不是把 skill 设计成大而泛的万能入口

## 设计原则

新增或修改 skill 时，优先保证：

1. **边界清晰**：它解决什么、不解决什么
2. **可组合**：能和其他 skill 形成 handoff
3. **可验证**：能写出 eval 或示例来说明触发边界
4. **少重叠**：尽量不要和已有 skill 只差措辞
5. **面向交付流程**：优先覆盖真实 workflow bottleneck，而不是代码实现技巧

## 提交流程建议

1. 先确认这个问题是否真的需要新 skill，而不是扩展现有 skill
2. 按模板创建完整 skill 目录
3. 补齐 root router / README / catalog / evals
4. 自查 naming、边界、examples、evals 是否一致
5. 用 PR 模板完成 checklist

## 与 issue / PR 模板的关系

- 提新 skill：优先使用 `Skill proposal`
- 报行为问题：使用 `Bug report`
- 改文档：使用 `Docs improvement`
- 提交 PR：使用仓库内置 PR template

## 一条简单判断标准

如果别人看完你的 `SKILL.md`、`README.md`、`evals/evals.json` 和 `references/examples.md`，仍然说不清“这个 skill 什么时候该用、什么时候不该用”，那这个贡献还不够完整。
