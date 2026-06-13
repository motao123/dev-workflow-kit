# api-contract-compatibility-review

用于检查接口、schema、payload、event 改动是否会破坏已有消费者。

## 适用场景

- request / response shape 要变
- schema / event / payload 可能破坏旧客户端
- 想先判断是否 backward compatible
- 需要决定 versioning / migration / deprecation 策略

## 标准流程

1. 确认正在变化的契约面。
2. 对比当前和目标行为/结构。
3. 判断向后/向前兼容风险。
4. 找出受影响消费者和迁移需求。
5. 给出 versioning 或 rollout 保护建议。
6. 给出验证和沟通建议。

## 推荐搭配

- 消费者面还不清：`change-impact-analysis`
- 兼容性影响发布形态：`release-rollout-strategy`
- 需要写迁移说明：`docs-writer`

## 调用示例

```text
用 api-contract-compatibility-review 检查这次接口改动会不会破坏老客户端。
```
