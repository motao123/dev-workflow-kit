# incident-observability-triage

用于线上告警、日志/指标/链路线索驱动的问题分诊。

## 适用场景

- 有告警在响
- 用户已经受影响
- 主要证据来自 logs / metrics / traces / dashboard
- 需要先判断影响范围和缓解方向
- 还不适合马上改代码

## 标准流程

1. 记录告警或异常信号。
2. 判断影响范围和严重度。
3. 关联日志、指标、链路、最近改动。
4. 区分先缓解还是先深挖根因。
5. 给出最安全的下一步顺序。
6. 转交后续 skill。

## 推荐搭配

- 深挖根因：`systematic-debugging`
- 需要修代码：`trellis-lightweight-tdd`
- 怀疑安全问题：`security-review`

## 调用示例

```text
用 incident-observability-triage 基于日志和指标先判断这次告警的影响范围和优先级。
```
