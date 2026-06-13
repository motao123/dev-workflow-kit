<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://img.shields.io/badge/dev--workflow--kit-21_skills-6366f1?style=for-the-badge&logo=github&logoColor=white&labelColor=111111">
    <img alt="dev-workflow-kit" src="https://img.shields.io/badge/dev--workflow--kit-21_skills-4f46e5?style=for-the-badge&logo=github&logoColor=white&labelColor=fafafa">
  </picture>
</p>

<p align="center">
  <a href="https://github.com/motao123/dev-workflow-kit/actions/workflows/ci.yml"><img src="https://github.com/motao123/dev-workflow-kit/actions/workflows/ci.yml/badge.svg" alt="CI" /></a>
  <a href="./LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" /></a>
  <a href="#skills-一览"><img src="https://img.shields.io/badge/Skills-21-6f42c1.svg" alt="Skills: 21" /></a>
  <img src="https://img.shields.io/badge/Branch-main-2ea44f.svg" alt="Branch: main" />
  <img src="https://img.shields.io/badge/Evals-Included-orange.svg" alt="Evals Included" />
  <img src="https://img.shields.io/badge/Examples-Included-1f6feb.svg" alt="Examples Included" />
</p>

<p align="center">
  <strong>面向 Claude Code / Codex / 兼容 Agent 的软件交付全流程 skill 集合。</strong><br />
  21 个独立 workflow skills，覆盖从需求规划到上线交付的完整链路。
</p>

<p align="center">
  <a href="./README.en.md">English</a> ·
  <a href="https://motao123.github.io/dev-workflow-kit/">Homepage</a> ·
  <a href="#快速开始">快速开始</a> ·
  <a href="#skills-一览">Skills</a> ·
  <a href="./CHANGELOG.md">Changelog</a> ·
  <a href="./CONTRIBUTING.md">Contributing</a>
</p>

---

## 目录

- [为什么需要这个项目](#为什么需要这个项目)
- [覆盖的交付环节](#覆盖的交付环节)
- [Skills 一览](#skills-一览)
- [快速开始](#快速开始)
- [推荐工作流](#推荐工作流)
- [调用示例](#调用示例)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

---

## 为什么需要这个项目

在实际开发中，编码只是整个交付链路的一段。真正反复消耗团队精力的，往往是编码之外的问题：

- 需求还没拆清楚就先动手，写完发现方向不对
- 改一个点不知道会影响哪些模块、接口和消费者
- 想做重构，但不清楚怎么切边界、怎么分步最安全
- bug 现象很多但根因不明，只能反复试
- 本地过了 CI 还在挂，日志又多又吵
- 评审意见一大片，没有系统化的分类和处理方式
- UI 改了但缺浏览器级证据，靠"应该没问题"上线
- 高风险改动需要安全或依赖角度的补充审查
- 代码能发但 rollout 策略还没设计好
- 功能做完了但文档和 release note 没人补

`dev-workflow-kit` 把这些问题对应成 **可独立调用的 skill**，每个 skill 都有明确的使用边界、输出格式和 handoff 路径。

---

## 覆盖的交付环节

### 1. 编码前：拆清楚再动手
- `planning`
- `test-strategy-gap-review`
- `change-impact-analysis`
- `architecture-refactor-guidance`

### 2. 卡住时：先把问题定位准
- `systematic-debugging`
- `incident-observability-triage`
- `performance-investigation`
- `fix-ci`

### 3. 合并前：让改动更可控
- `review-address-comments`
- `browser-verification`
- `security-review`
- `dependency-compliance-audit`
- `api-contract-compatibility-review`
- `cost-impact-review`
- `data-quality-audit`

### 4. 上线时：让交付更稳
- `release-rollout-strategy`
- `environment-config-audit`
- `data-migration-safety-review`
- `release-incident-postmortem`
- `ship-readiness`
- `docs-writer`

---

## Skills 一览

| Skill | 用途 | 典型输出 |
| --- | --- | --- |
| `planning` | 需求拆解、实施顺序与验收标准 | 实施计划、风险与依赖、验证方案 |
| `test-strategy-gap-review` | 评估当前测试覆盖是否足够 | 盲区清单、补测建议、验证优先级 |
| `change-impact-analysis` | 分析改动的影响面与回归区域 | 影响面、下游消费者、验证重点 |
| `architecture-refactor-guidance` | 判断结构调整的边界与分步顺序 | 边界建议、分步重构方案、保守策略 |
| `systematic-debugging` | 系统化定位复杂 bug 的根因 | 复现状态、缩小范围、根因判断 |
| `incident-observability-triage` | 基于告警/日志/指标做线上事故分诊 | 影响范围、缓解方向、下一步排查 |
| `performance-investigation` | 在优化前定位性能瓶颈 | 瓶颈类型、热点、测量或缓解方向 |
| `fix-ci` | 定位 CI / build / test 流水线最早失败点 | 失败分类、最小修复路径 |
| `review-address-comments` | 系统化分类并处理 PR 评论 | 评论分组、处理方案、解决摘要 |
| `browser-verification` | 前端 Web UI 的浏览器级功能验证 | 黄金路径结果、观察证据 |
| `security-review` | 安全视角审查（信任边界、滥用面） | 风险清单、严重度、修复建议 |
| `dependency-compliance-audit` | 依赖、license 与供应链评估 | 风险分类、合规建议 |
| `api-contract-compatibility-review` | API / schema / event 契约兼容性审查 | breaking changes、迁移建议 |
| `release-rollout-strategy` | 设计灰度、canary、回滚与监控方案 | rollout 方案、checkpoint、回滚条件 |
| `environment-config-audit` | 审计环境一致性与配置漂移 | parity 风险、config blocker |
| `data-migration-safety-review` | 数据迁移与 backfill 安全审查 | 迁移风险、回滚限制、验证 checkpoint |
| `release-incident-postmortem` | 事故缓解后的结构化复盘 | 时间线、影响、根因、改进项 |
| `cost-impact-review` | 评估改动对运行成本的影响 | 成本因子、风险热点、优化建议 |
| `data-quality-audit` | 运行期数据正确性、新鲜度、完整性审查 | 异常清单、严重度、修复与监控建议 |
| `ship-readiness` | merge / release 前最终检查 | blocker 清单、风险摘要 |
| `docs-writer` | 基于真实代码补充 README / migration / release note | 文档草稿、缺口分析 |

---

## 快速开始

### 安装

```bash
git clone https://github.com/motao123/dev-workflow-kit ~/.codex/skills/dev-workflow-kit
```

### 选择 skill

按**当前瓶颈**来选，不是按最终目标：

| 卡在哪里 | 用哪个 |
| --- | --- |
| 需求没拆清 | `planning` |
| 不知道改动会影响谁 | `change-impact-analysis` |
| 不知道为什么坏了 | `systematic-debugging` |
| CI 一直在挂 | `fix-ci` |
| 能不能上线 | `ship-readiness` |

### 第一次调用

```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

---

## 推荐工作流

**功能开发**
```
planning → test-strategy-gap-review → change-impact-analysis → review-address-comments → browser-verification → ship-readiness → docs-writer
```

**复杂重构**
```
planning → architecture-refactor-guidance → change-impact-analysis → test-strategy-gap-review → api-contract-compatibility-review → ship-readiness
```

**线上问题**
```
incident-observability-triage → performance-investigation / systematic-debugging → release-rollout-strategy → ship-readiness → release-incident-postmortem
```

**发版前检查**
```
environment-config-audit → data-migration-safety-review → data-quality-audit → dependency-compliance-audit → cost-impact-review → security-review → release-rollout-strategy → ship-readiness → docs-writer
```

---

## 调用示例

<details>
<summary>展开常用调用示例</summary>

```text
# 规划
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。

# 影响分析
用 dev-workflow-kit 的 change-impact-analysis 看一下这次改动会影响哪些模块、接口和验证面。

# 调试
用 dev-workflow-kit 的 systematic-debugging，先复现并缩小范围，再决定怎么修。

# CI
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。

# API 兼容性
用 dev-workflow-kit 的 api-contract-compatibility-review，检查这次接口改动会不会破坏老客户端。

# 性能
用 dev-workflow-kit 的 performance-investigation 先判断这次延迟回归最可能卡在哪一层。

# 环境配置
用 dev-workflow-kit 的 environment-config-audit 在发版前检查 local、staging、prod 的配置假设是否一致。

# 成本
用 dev-workflow-kit 的 cost-impact-review，评估这次改动会不会让 infra 或单请求成本明显上涨。

# 发布策略
用 dev-workflow-kit 的 release-rollout-strategy，给这个功能设计一个带监控和回滚条件的上线方案。

# 事故复盘
用 dev-workflow-kit 的 release-incident-postmortem，把这次事故复盘成 timeline、影响、根因和后续改进项。
```

</details>

---

## Roadmap

完整版本历史见 [`CHANGELOG.md`](./CHANGELOG.md)。

| 版本 | 内容 |
| --- | --- |
| v1 | 基础 lifecycle skill 集（8 skills） |
| v2 | 重构 / incident / dependency 扩展（+3） |
| v3 | impact / rollout / contract 扩展（+3） |
| v4 | test strategy / performance / env config 扩展（+3） |
| v5 | data migration safety（+1） |
| v6 | incident postmortem / cost / data quality（+3） |

后续方向：更丰富的 eval 样例、使用录屏与截图。

---

## Contributing

如果要新增或调整 skill，请先阅读 [`CONTRIBUTING.md`](./CONTRIBUTING.md)。

核心约定：

1. 每个 skill 一个目录（小写 kebab-case）
2. 每个 skill 至少包含 `SKILL.md`、`README.md`、`evals/evals.json`、`references/examples.md`
3. 新增或调整 skill 时需同步更新根目录 `SKILL.md`、`README.md`、`references/skill-catalog.md`
4. 每个 skill 必须写清楚适用场景、不适用场景、workflow、output、coordination 和 invocation examples

---

## License

MIT © 2026 陌涛
