# dev-workflow-kit

一个面向 Codex / Claude Code / 兼容 Agent 的完整开发生命周期 skill 包。

它不是替代 `trellis-lightweight-tdd`，而是补足它前后两端的工作：

- 写代码前：规划、需求拆解、风险识别、架构/重构判断
- 写代码时卡住：系统化调试、CI 排障、事故/可观测性分诊
- 写代码后：评审处理、浏览器验证、安全审查、依赖/合规审计、发布检查、文档沉淀

核心：

> `trellis-lightweight-tdd` 负责“怎么把代码改对”，`dev-workflow-kit` 负责“怎么把整个交付流程走稳”。

## 适合谁

- 已经在用 `trellis-lightweight-tdd`，但希望把整个开发链路补齐的人。
- 想把 AI skill 从“写代码助手”升级成“交付流程助手”的人。
- 希望规划、调试、CI、review、发布、文档都能有明确入口的人。
- 想在 Claude Code / Codex 中保持统一 skill 风格的人。

## 包含哪些 skill

### 1. planning
用于需求不清、实现范围大、需要先拆解的时候。

### 2. systematic-debugging
用于 bug 根因不明、复现不稳定、现象复杂的时候。

### 3. fix-ci
用于 CI 红灯、流水线失败、本地过但远端不过的时候。

### 4. review-address-comments
用于处理 PR 评论、代码评审意见、Requested changes 的时候。

### 5. browser-verification
用于前端 / Web UI / 表单 / 交互的浏览器级验证。

### 6. security-review
用于权限、鉴权、输入边界、secret、注入面等安全相关检查。

### 7. ship-readiness
用于 merge 前 / release 前做一次总检查。

### 8. docs-writer
用于 README、迁移说明、release note、示例和开发文档更新。

### 9. architecture-refactor-guidance
用于模块边界、重构顺序、耦合拆解、结构调整这类问题。

### 10. incident-observability-triage
用于线上告警、日志/指标/链路线索驱动的问题分诊。

### 11. dependency-compliance-audit
用于第三方依赖风险、license、合规、供应链相关评估。

## 推荐配合方式

推荐工作流：

1. 先用 `planning` 把任务切清楚。
2. 再用 `trellis-lightweight-tdd` 进入实现。
3. 如果是结构性改动，先用 `architecture-refactor-guidance`。
4. 如果问题不清楚，用 `systematic-debugging`。
5. 如果是告警、日志、指标驱动的问题，用 `incident-observability-triage`。
6. 如果 CI 挂了，用 `fix-ci`。
7. 如果评审来了，用 `review-address-comments`。
8. 如果是前端变更，补 `browser-verification`。
9. 如果是高风险改动，补 `security-review`。
10. 如果依赖或 license 是问题，补 `dependency-compliance-audit`。
11. merge/release 前跑 `ship-readiness`。
12. 最后用 `docs-writer` 做知识沉淀。

## 安装

把目录放到：

```text
~/.codex/skills/dev-workflow-kit
```

目录结构：

```text
dev-workflow-kit/
├── SKILL.md
├── README.md
├── planning/
├── systematic-debugging/
├── fix-ci/
├── review-address-comments/
├── browser-verification/
├── security-review/
├── ship-readiness/
├── docs-writer/
├── architecture-refactor-guidance/
├── incident-observability-triage/
└── dependency-compliance-audit/
```

## 推荐调用方式

规划任务：

```text
用 dev-workflow-kit 里的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

排查复杂 bug：

```text
用 dev-workflow-kit 的 systematic-debugging，先复现并缩小范围，再决定怎么修。
```

处理 CI：

```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

处理评审意见：

```text
用 dev-workflow-kit 的 review-address-comments，把这轮 review comment 分类并逐条处理。
```

架构/重构判断：

```text
用 dev-workflow-kit 的 architecture-refactor-guidance，先判断这个重构应该怎么切边界、怎么分步落地。
```

线上事故分诊：

```text
用 dev-workflow-kit 的 incident-observability-triage，基于日志和指标先判断影响范围和优先级。
```

依赖/合规审计：

```text
用 dev-workflow-kit 的 dependency-compliance-audit，评估这个新依赖的风险、license 和是否适合上线。
```

发布前检查：

```text
用 dev-workflow-kit 的 ship-readiness，看看这个分支离 merge / release 还差什么。
```

## 它和 trellis-lightweight-tdd 的关系

- `trellis-lightweight-tdd`：偏实现与验证纪律
- `dev-workflow-kit`：偏开发全流程协同

两者组合后，基本可以覆盖：

- 规划
- 实现
- 调试
- 自动化集成
- 评审协作
- 前端验证
- 安全检查
- 发布前检查
- 文档沉淀
- 架构/重构决策
- 事故/可观测性分诊
- 依赖/合规审计

## License

MIT