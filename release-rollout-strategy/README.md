# release-rollout-strategy

用于设计灰度、分批、回滚、监控点和发布顺序。

## 适用场景

- 代码理论上能发，但上线方式还不稳
- 需要 phased / canary / flag-gated rollout
- rollout 顺序会影响服务、客户端、schema 或环境
- 需要明确 rollback 条件和监控点

## 标准流程

1. 总结改动和部署面。
2. 找出 rollout 约束和风险点。
3. 选择上线形态。
4. 定义 checkpoint、owner、rollback 条件。
5. 明确上线前前置条件。
6. 给出最终发布顺序。

## 推荐搭配

- 发版前总检查：`ship-readiness`
- 上线后出问题：`incident-observability-triage`
- 需要写 release note / migration：`docs-writer`

## 调用示例

```text
用 release-rollout-strategy 给这个功能设计一个带监控和回滚条件的上线方案。
```
