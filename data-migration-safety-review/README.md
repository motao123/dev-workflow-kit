# data-migration-safety-review

用于审查 schema change、backfill、reindex、持久化数据迁移的安全性。

## 适用场景

- 要做数据库或 schema migration
- 要做 backfill / reindex / 数据重写
- rollout 期间旧数据和新数据形态会并存
- 不确定是否可回滚、是否幂等、是否会写漂移

## 标准流程

1. 确认受影响的数据面。
2. 判断是 additive、destructive、backfill、dual-write 还是格式过渡型变更。
3. 分析 rollout 顺序、并存窗口、回滚限制。
4. 找出部分 backfill、不一致读写、不可逆修改等风险。
5. 给出最安全的迁移路径和验证点。
6. 标出需要补 runbook 或迁移说明的地方。

## 推荐搭配

- 影响外部契约：`api-contract-compatibility-review`
- 部署顺序敏感：`release-rollout-strategy`
- 需要补迁移文档：`docs-writer`

## 调用示例

```text
用 data-migration-safety-review 在上线前审查这个 schema backfill 是否安全。
```
