# dev-workflow-kit

一个面向 Claude Code / Codex / 兼容 Agent 的 **软件交付全流程 skill 集合**。

它不是“写代码技巧合集”，而是把开发过程中真正反复出现的环节拆成独立 skill：**规划、影响分析、重构判断、调试、CI、评审处理、浏览器验证、安全检查、依赖审计、发布策略、发版前检查、文档沉淀**。

> 目标很简单：让 AI 不只是会改代码，而是能更稳地推进整个交付流程。

---

## 为什么会有这个项目

很多仓库里，编码只是中间的一段。
真正容易卡住的，往往是这些问题：

- 需求还没拆清楚，先写容易返工
- 改一个点，不知道会影响哪些模块和消费者
- 重构想做，但不知道怎么切边界最安全
- bug 现象很多，根因不清楚
- 本地过了，CI 还在挂
- 评审意见很多，不知道怎么归类和逐条处理
- UI 改了，但缺浏览器级证据
- 改动高风险，需要安全或依赖角度再看一遍
- 代码能发，但不知道怎么 rollout 才稳
- 功能做完了，文档和 release note 还没人补

`dev-workflow-kit` 就是把这些“编码之外但交付必经”的环节做成可直接调用的 skill。

---

## 它解决什么问题

### 1. 让任务先被拆清楚
- `planning`
- `change-impact-analysis`
- `architecture-refactor-guidance`

### 2. 让问题先被定位清楚
- `systematic-debugging`
- `incident-observability-triage`
- `fix-ci`

### 3. 让改动在合并前更可控
- `review-address-comments`
- `browser-verification`
- `security-review`
- `dependency-compliance-audit`
- `api-contract-compatibility-review`

### 4. 让上线和交付更稳
- `release-rollout-strategy`
- `ship-readiness`
- `docs-writer`

---

## 生命周期技能地图

```text
Idea / Change Request
        |
        v
  planning
        |
        +--> change-impact-analysis
        +--> architecture-refactor-guidance
        |
        v
Implementation / Active Coding Workflow
        |
        +--> systematic-debugging
        +--> incident-observability-triage
        +--> fix-ci
        |
        v
Review / Verification
        +--> review-address-comments
        +--> browser-verification
        +--> security-review
        +--> dependency-compliance-audit
        +--> api-contract-compatibility-review
        |
        v
Release / Delivery
        +--> release-rollout-strategy
        +--> ship-readiness
        +--> docs-writer
```

---

## 当前包含的 skills

| Skill | 用途 | 典型输出 |
| --- | --- | --- |
| `planning` | 需求拆解、实施顺序、验收标准 | 实施计划、风险、验证方案 |
| `change-impact-analysis` | 分析改动影响范围 | 影响面、回归区域、验证重点 |
| `architecture-refactor-guidance` | 判断结构调整和重构路径 | 边界建议、拆分顺序、保守改法 |
| `systematic-debugging` | 根因不明时系统化排查 | 复现状态、假设、根因方向 |
| `incident-observability-triage` | 基于告警/日志/指标做分诊 | 影响范围、缓解方向、下一步排查 |
| `fix-ci` | 处理 CI / build / type / test 失败 | 最早失败点、最小修复路径 |
| `review-address-comments` | 处理 PR 评论和 requested changes | 评论分组、处理清单、解决摘要 |
| `browser-verification` | 前端或 Web UI 的浏览器级验证 | 黄金路径结果、观察证据 |
| `security-review` | 安全视角审查 | 风险清单、严重度、修复建议 |
| `dependency-compliance-audit` | 第三方依赖、license、供应链评估 | 风险分类、决策建议 |
| `api-contract-compatibility-review` | API / schema / event 契约兼容性评估 | breaking changes、兼容性风险、迁移建议 |
| `release-rollout-strategy` | 发布、灰度、回滚和监控策略 | rollout 方案、checkpoint、回滚条件 |
| `ship-readiness` | merge / release 前总检查 | blocker、done/missing、风险总结 |
| `docs-writer` | README / migration / release note / 示例 | 文档草稿、说明结构、补齐建议 |

---

## Quick Start

### 1) 安装
把整个目录放到技能目录：

```text
~/.codex/skills/dev-workflow-kit
```

### 2) 先从一个最直接的问题开始
比如：

```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

或者：

```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

### 3) 按当前瓶颈挑 skill，而不是按最终目标挑
例如：
- 现在卡在“需求没拆清” -> `planning`
- 现在卡在“这次改动影响谁” -> `change-impact-analysis`
- 现在卡在“为什么坏了” -> `systematic-debugging`
- 现在卡在“CI 不过” -> `fix-ci`
- 现在卡在“能不能上线” -> `ship-readiness`

---

## 安装与使用

### 安装路径

```text
~/.codex/skills/dev-workflow-kit
```

### 目录结构

```text
dev-workflow-kit/
├── SKILL.md
├── README.md
├── LICENSE
├── evals/
├── references/
├── planning/
├── change-impact-analysis/
├── architecture-refactor-guidance/
├── systematic-debugging/
├── incident-observability-triage/
├── fix-ci/
├── review-address-comments/
├── browser-verification/
├── security-review/
├── dependency-compliance-audit/
├── api-contract-compatibility-review/
├── release-rollout-strategy/
├── ship-readiness/
└── docs-writer/
```

### 根目录文件说明
- `SKILL.md`：总入口路由 skill
- `README.md`：GitHub 首页 / 项目说明
- `evals/evals.json`：顶层触发样例
- `references/skill-catalog.md`：问题类型到 skill 的映射
- `references/design-notes.md`：设计 rationale

### 每个 skill 目录里的文件说明
- `SKILL.md`：技能定义
- `README.md`：人类可读说明
- `evals/evals.json`：触发样例
- `references/examples.md`：真实 prompt 示例

---

## 推荐使用流

### 功能开发
```text
planning -> change-impact-analysis -> active coding workflow -> review-address-comments -> browser-verification -> ship-readiness -> docs-writer
```

### 复杂重构
```text
planning -> architecture-refactor-guidance -> change-impact-analysis -> active coding workflow -> api-contract-compatibility-review -> ship-readiness
```

### 线上问题
```text
incident-observability-triage -> systematic-debugging -> active coding workflow -> release-rollout-strategy -> ship-readiness
```

### 发版前检查
```text
dependency-compliance-audit -> security-review -> release-rollout-strategy -> ship-readiness -> docs-writer
```

---

## 调用示例

### 规划任务
```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

### 看影响范围
```text
用 dev-workflow-kit 的 change-impact-analysis 看一下这次改动会影响哪些模块、接口和验证面。
```

### 判断重构路径
```text
用 dev-workflow-kit 的 architecture-refactor-guidance，先判断这个重构应该怎么切边界、怎么分步落地。
```

### 排查复杂 bug
```text
用 dev-workflow-kit 的 systematic-debugging，先复现并缩小范围，再决定怎么修。
```

### 处理告警
```text
用 dev-workflow-kit 的 incident-observability-triage，基于日志和指标先判断影响范围和优先级。
```

### 处理 CI
```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

### 处理评审意见
```text
用 dev-workflow-kit 的 review-address-comments，把这轮 review comment 分类并逐条处理。
```

### 做依赖审计
```text
用 dev-workflow-kit 的 dependency-compliance-audit，评估这个新依赖的风险、license 和是否适合上线。
```

### 看 API 契约兼容性
```text
用 dev-workflow-kit 的 api-contract-compatibility-review，检查这次接口改动会不会破坏老客户端。
```

### 设计 rollout
```text
用 dev-workflow-kit 的 release-rollout-strategy，给这个功能设计一个带监控和回滚条件的上线方案。
```

### 发布前检查
```text
用 dev-workflow-kit 的 ship-readiness，看看这个分支离 merge / release 还差什么。
```

---

## Showcase / Demo 占位

### 终端会话示例
> TODO: 这里可以补一个从 planning -> fix-ci -> ship-readiness 的完整对话截图

### 工作流对比示例
> TODO: 这里可以补“只会写代码的 agent” vs “能推进交付流程的 agent” 对比图

### UI 验证示例
> TODO: 这里可以补 browser-verification 的截图或录屏链接

---

## v3 新增亮点

本次 v3 重点增加了 3 个更偏“独立交付能力”的 skill：

- `change-impact-analysis`
- `release-rollout-strategy`
- `api-contract-compatibility-review`

这 3 个方向让项目从“会规划、会排障、会验收”进一步扩展到：
- 预判改动影响
- 设计发布路径
- 审查接口兼容性

---

## Roadmap

### 已完成
- v1：基础 lifecycle skill 集
- v2：重构 / incident / dependency 三个方向扩展
- v3：impact / rollout / contract 三个方向扩展
- standalone 化：去除外部 skill 依赖命名

### 后续可以继续扩展
- `environment-config-audit`
- `test-strategy-gap-review`
- `performance-investigation`
- 更丰富的 eval 样例
- 更完整的截图 / GIF / 使用录屏

---

## Contributing

如果你要继续往这个仓库里加 skill，建议保持以下约定：

1. 每个 skill 一个目录
2. 每个目录至少包含：
   - `SKILL.md`
   - `README.md`
   - `evals/evals.json`
   - `references/examples.md`
3. 命名统一使用小写 kebab-case
4. 根目录 `SKILL.md`、`README.md`、`references/skill-catalog.md` 要同步更新
5. 新 skill 要写清楚：
   - 适用场景
   - 不适用场景
   - workflow
   - output
   - coordination
   - invocation examples

---

## License

MIT
