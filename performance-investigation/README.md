# performance-investigation

用于排查延迟、吞吐、资源占用、渲染卡顿、查询热点等性能问题。

## 适用场景

- 某个接口、页面、任务明显变慢
- CPU / memory / resource usage 是主要症状
- 不知道性能瓶颈大概在哪一层
- 发版或扩容信心被性能问题卡住

## 标准流程

1. 确认性能症状和受影响面。
2. 判断是 latency、throughput、memory、CPU、render 还是其他资源问题。
3. 缩小热点范围和测量点。
4. 区分根瓶颈和连锁症状。
5. 给出下一步排查或缓解方向。
6. 标出最值得补的证据。

## 推荐搭配

- 已经是线上事故：`incident-observability-triage`
- 其实是更广的逻辑问题：`systematic-debugging`
- 需要真正优化：进入当前项目的实现工作流

## 调用示例

```text
用 performance-investigation 先判断这次延迟回归最可能卡在哪一层。
```
