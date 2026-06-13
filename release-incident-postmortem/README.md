# release-incident-postmortem

用于事故已经缓解后，做一次结构化的复盘，沉淀时间线、影响、根因、改进项。

## 适用场景

- 故障 / 回归 / 发布事故已经被止住
- 需要写出一份正式的 postmortem
- 需要把改进事项落到具体动作和负责人
- 需要给后续做预防设计提供输入

## 标准流程

1. 确认事故已稳定。
2. 还原时间线。
3. 总结用户可见影响和范围。
4. 找出根因和促成因素。
5. 梳理实际采取的缓解动作。
6. 列出改进项、负责人、验证方法。

## 推荐搭配

- 发布 / 对外沟通：`docs-writer`
- 发布形态需要改：`release-rollout-strategy`
- 根因仍然不清楚：`systematic-debugging`

## 调用示例

```text
用 release-incident-postmortem 把昨晚事故复盘成 timeline、影响、根因和后续改进项。
```
