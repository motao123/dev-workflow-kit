# cost-impact-review

用于评估改动对运行成本（计算、存储、流量、第三方 API、观测）的影响。

## 适用场景

- 新增数据库查询、API 调用、后台任务可能随请求量放大
- 缓存 / 批处理 / 分页策略变了
- 第三方 SaaS / 付费 API 调用量可能上涨
- 日志、trace、metric 体量可能明显变化
- 发版前想做一次成本回归检查

## 标准流程

1. 识别改动牵动的成本因子。
2. 判断成本方向：按请求 / 按用户 / 按事件 / 按部署。
3. 对比更便宜的替代方案。
4. 找出会随流量放大的风险点。
5. 给出最小缓解或度量方案。
6. 建议上线后的验证方式。

## 推荐搭配

- 需要结构调整来降本：`architecture-refactor-guidance`
- 需要在发布中带 cost checkpoint：`release-rollout-strategy`
- 发版前最终判断：`ship-readiness`

## 调用示例

```text
用 cost-impact-review 看看这次改动会不会让 infra 或单请求成本明显上涨。
```
