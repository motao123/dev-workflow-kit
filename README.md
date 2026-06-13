# dev-workflow-kit

![CI](https://github.com/motao123/dev-workflow-kit/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Skills: 18](https://img.shields.io/badge/Skills-18-6f42c1.svg)
![Branch: main](https://img.shields.io/badge/Branch-main-2ea44f.svg)
![Evals Included](https://img.shields.io/badge/Evals-Included-orange.svg)
![Examples Included](https://img.shields.io/badge/Examples-Included-1f6feb.svg)

一个面向 Claude Code / Codex / 兼容 Agent 的 **软件交付全流程 skill 集合**。

它不是“写代码技巧合集”，而是把开发过程中真正反复出现的环节拆成独立 skill：**规划、影响分析、重构判断、调试、CI、评审处理、浏览器验证、安全检查、依赖审计、发布策略、发版前检查、文档沉淀**。

- 覆盖从需求规划到上线交付的 **18 个 workflow skills**
- 面向 **Claude Code / Codex / 兼容 Agent** 的实际开发流程，而不只是“写代码”
- 每个 skill 都带有 **README、eval 样例和 prompt 示例**

> 目标很简单：让 AI 不只是会改代码，而是能更稳地推进整个交付流程。

**快速入口：** [快速开始](#快速开始) · [Skills 一览](#skills-一览) · [推荐工作流](#推荐工作流) · [调用示例](#调用示例) · [Contributing](#contributing)

## 目录

- [为什么会有这个项目](#为什么会有这个项目)
- [覆盖的交付环节](#覆盖的交付环节)
- [生命周期技能地图](#生命周期技能地图)
- [Skills 一览](#skills-一览)
- [快速开始](#快速开始)
- [推荐工作流](#推荐工作流)
- [调用示例](#调用示例)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

---

## 为什么会有这个项目

很多仓库里，编码只是中间的一段。真正容易卡住的，往往是这些问题：

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

## 覆盖的交付环节

### 1. 让任务先被拆清楚
- `planning`
- `test-strategy-gap-review`
- `change-impact-analysis`
- `architecture-refactor-guidance`

### 2. 让问题先被定位清楚
- `systematic-debugging`
- `incident-observability-triage`
- `performance-investigation`
- `fix-ci`

### 3. 让改动在合并前更可控
- `review-address-comments`
- `browser-verification`
- `security-review`
- `dependency-compliance-audit`
- `api-contract-compatibility-review`

### 4. 让上线和交付更稳
- `release-rollout-strategy`
- `environment-config-audit`
- `data-migration-safety-review`
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
        +--> test-strategy-gap-review
        +--> change-impact-analysis
        +--> architecture-refactor-guidance
        |
        v
Implementation / Active Coding Workflow
        |
        +--> systematic-debugging
        +--> incident-observability-triage
        +--> fix-ci
        +--> performance-investigation
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
        +--> environment-config-audit
        +--> data-migration-safety-review
        +--> release-rollout-strategy
        +--> ship-readiness
        +--> docs-writer
```

---

## Skills 一览

| Skill | 用途 | 典型输出 |
| --- | --- | --- |
| `planning` | 需求拆解、实施顺序、验收标准 | 实施计划、风险、验证方案 |
| `test-strategy-gap-review` | 评估测试是否足够、缺什么覆盖 | 测试盲区、补测建议、验证优先级 |
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
| `performance-investigation` | 性能瓶颈排查 | 瓶颈类型、热点、下一步测量方向 |
| `environment-config-audit` | 环境一致性和配置漂移审计 | parity 风险、config blocker、建议检查项 |
| `data-migration-safety-review` | 数据迁移和 backfill 安全审查 | 迁移风险、回滚限制、验证 checkpoint |
| `ship-readiness` | merge / release 前总检查 | blocker、done/missing、风险总结 |
| `docs-writer` | README / migration / release note / 示例 | 文档草稿、说明结构、补齐建议 |

---

## 快速开始

### 安装
把整个目录放到技能目录：

```text
~/.codex/skills/dev-workflow-kit
```

### 如何选择 skill
按**当前瓶颈**来选，而不是按最终目标来选：

- 现在卡在“需求没拆清” -> `planning`
- 现在卡在“测试够不够” -> `test-strategy-gap-review`
- 现在卡在“这次改动影响谁” -> `change-impact-analysis`
- 现在卡在“为什么坏了” -> `systematic-debugging`
- 现在卡在“CI 不过” -> `fix-ci`
- 现在卡在“性能为什么变差” -> `performance-investigation`
- 现在卡在“发版环境是否一致” -> `environment-config-audit`
- 现在卡在“数据迁移是否安全” -> `data-migration-safety-review`
- 现在卡在“能不能上线” -> `ship-readiness`

### 第一次调用
先从一个最直接的问题开始，例如：

```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

或者：

```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

> 仓库结构约定很简单：根目录有 `SKILL.md`、`README.md`、`evals/`、`references/`，每个子 skill 目录都包含 `SKILL.md`、`README.md`、`evals/evals.json`、`references/examples.md`。

---

## 推荐工作流

### 功能开发
```text
planning -> test-strategy-gap-review -> change-impact-analysis -> active coding workflow -> review-address-comments -> browser-verification -> ship-readiness -> docs-writer
```

### 复杂重构
```text
planning -> architecture-refactor-guidance -> change-impact-analysis -> test-strategy-gap-review -> active coding workflow -> api-contract-compatibility-review -> ship-readiness
```

### 线上问题
```text
incident-observability-triage -> performance-investigation / systematic-debugging -> active coding workflow -> release-rollout-strategy -> ship-readiness
```

### 发版前检查
```text
environment-config-audit -> data-migration-safety-review -> dependency-compliance-audit -> security-review -> release-rollout-strategy -> ship-readiness -> docs-writer
```

---

## 调用示例

### 规划任务
```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

### 看测试缺口
```text
用 dev-workflow-kit 的 test-strategy-gap-review 看一下这次改动最缺哪类测试覆盖。
```

### 看影响范围
```text
用 dev-workflow-kit 的 change-impact-analysis 看一下这次改动会影响哪些模块、接口和验证面。
```

### 排查复杂 bug
```text
用 dev-workflow-kit 的 systematic-debugging，先复现并缩小范围，再决定怎么修。
```

### 处理 CI
```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

### 看 API 契约兼容性
```text
用 dev-workflow-kit 的 api-contract-compatibility-review，检查这次接口改动会不会破坏老客户端。
```

### 排查性能瓶颈
```text
用 dev-workflow-kit 的 performance-investigation 先判断这次延迟回归最可能卡在哪一层。
```

### 审计环境配置
```text
用 dev-workflow-kit 的 environment-config-audit 在发版前检查 local、staging、prod 的配置假设是否一致。
```

### 审查数据迁移安全
```text
用 dev-workflow-kit 的 data-migration-safety-review 在上线前审查这个 schema backfill 是否安全。
```

### 设计 rollout
```text
用 dev-workflow-kit 的 release-rollout-strategy，给这个功能设计一个带监控和回滚条件的上线方案。
```

---

## Roadmap

完整版本历史见 [`CHANGELOG.md`](./CHANGELOG.md)。

### 当前版本亮点
- standalone：不依赖外部 skill 命名体系
- 18 个 skill 覆盖从规划到交付的关键环节
- v3 新增：
  - `change-impact-analysis`
  - `release-rollout-strategy`
  - `api-contract-compatibility-review`
- v4 新增：
  - `test-strategy-gap-review`
  - `performance-investigation`
  - `environment-config-audit`
- v5 新增：
  - `data-migration-safety-review`

### 已完成
- v1：基础 lifecycle skill 集
- v2：重构 / incident / dependency 三个方向扩展
- v3：impact / rollout / contract 三个方向扩展
- v4：test strategy / performance / environment config 三个方向扩展
- v5：data migration safety 方向扩展
- standalone 化：去除外部 skill 依赖命名

### 后续可以继续扩展
- 更丰富的 eval 样例
- 更完整的截图 / GIF / 使用录屏

---

## Contributing

如果你要继续往这个仓库里加 skill，建议先阅读 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。

最核心的约定是：

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

如果你要正式贡献，请把 `CONTRIBUTING.md` 作为完整规则来源。

---

## License

MIT
