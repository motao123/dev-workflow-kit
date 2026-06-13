# environment-config-audit

用于审计环境一致性、配置漂移、flags、secrets 和部署时假设。

## 适用场景

- 本地、staging、prod 可能因为配置不同表现不一致
- env vars / secrets / feature flags 是主要风险
- 不确定部署时假设是否完整
- 发版前想确认环境一致性

## 标准流程

1. 找出涉及的环境和配置面。
2. 梳理 env vars、flags、defaults、secrets、部署假设。
3. 找出缺失、漂移或危险默认值。
4. 区分 release blocker 和次级问题。
5. 给出最小修复或检查建议。
6. 标出需要补文档或重验的部分。

## 推荐搭配

- rollout 依赖 flags / staged config：`release-rollout-strategy`
- 发版前最终阻塞：`ship-readiness`
- 需要补 setup / migration 文档：`docs-writer`

## 调用示例

```text
用 environment-config-audit 在发版前检查 local、staging、prod 的配置假设是否一致。
```
