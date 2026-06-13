# Skill Catalog

| Problem type | Recommended skill | Expected output | Use before / after |
| --- | --- | --- | --- |
| 需求不清、范围模糊 | `planning` | 任务拆解、风险、验收标准、验证方案 | Before implementation |
| 改动影响范围不清 | `change-impact-analysis` | 影响面、回归区域、验证重点 | Before or alongside implementation |
| 复杂 bug、根因不明 | `systematic-debugging` | 复现路径、假设、根因判断、下一步修复方向 | Before or alongside implementation |
| CI 红灯、流水线挂掉 | `fix-ci` | 最早失败点、分类、最小修复方案 | After local changes / before merge |
| PR 评论、review 反馈 | `review-address-comments` | 评论分类、处理方案、解决摘要 | After implementation |
| 前端/UI 改动验证 | `browser-verification` | 浏览器验证步骤、观察结果、证据 | After implementation |
| 安全敏感改动 | `security-review` | 风险清单、严重度、修复建议 | Before merge / release |
| 结构性重构、模块边界调整 | `architecture-refactor-guidance` | 结构评估、拆分顺序、验证策略 | Before large refactors |
| 线上告警、日志/指标/链路驱动的问题 | `incident-observability-triage` | 影响范围、故障面、缓解方向、下一步排查 | During incident or prod triage |
| 第三方依赖风险、license、合规、供应链评估 | `dependency-compliance-audit` | 依赖风险摘要、合规问题、建议动作 | Before adoption / before release |
| API / schema / event 契约兼容性问题 | `api-contract-compatibility-review` | breaking changes、兼容性风险、迁移建议 | Before release / before client impact |
| rollout 形态、checkpoint、回滚设计 | `release-rollout-strategy` | rollout 方案、checkpoint、rollback 条件 | Before release |
| 准备 merge / release | `ship-readiness` | 发布前检查表、剩余 blocker、风险摘要 | Near completion |
| 文档和知识沉淀 | `docs-writer` | README / migration / release note / 示例草稿 | After implementation |

## Recommended flow

1. `planning`
2. `change-impact-analysis` when the first question is what the change touches
3. `architecture-refactor-guidance` when structure is the real problem
4. active implementation workflow
5. `systematic-debugging` when needed
6. `incident-observability-triage` when alerts, logs, or metrics drive the investigation
7. `fix-ci` when automation disagrees
8. `review-address-comments`
9. `browser-verification` / `security-review` / `dependency-compliance-audit` / `api-contract-compatibility-review` when applicable
10. `release-rollout-strategy` when release shape is still open
11. `ship-readiness`
12. `docs-writer`
