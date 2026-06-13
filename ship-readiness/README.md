# ship-readiness

用于在 merge 前 / release 前做一次交付就绪检查。

## 适用场景

- 想知道这个分支离 merge 还差什么
- 准备发版，想做一次总检查
- 需要把 done / missing / risk 讲清楚
- 需要考虑回滚、文档、验证状态

## 标准流程

1. 总结这次改动目标。
2. 检查验证和自动化状态。
3. 列出 blocker 和未解决风险。
4. 看文档、迁移、发布、回滚是否有缺口。
5. 区分已完成和未完成项。
6. 给出下一步最小行动顺序。

## 推荐搭配

- CI 还红：`fix-ci`
- 前端要验收：`browser-verification`
- 安全敏感：`security-review`
- 文档没补：`docs-writer`

## 调用示例

```text
用 ship-readiness 看看这个分支离 merge / release 还差什么。
```
