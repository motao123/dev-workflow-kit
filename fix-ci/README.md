# fix-ci

用于处理 CI / lint / type-check / build / test 流水线失败。

## 适用场景

- CI 红灯
- 本地通过但远端失败
- 日志很多，不知道先看哪里
- 需要快速判断最小修复路径

## 标准流程

1. 先看最早失败点。
2. 判断属于哪一层：lint、type、test、build、packaging、环境。
3. 区分根因和连锁报错。
4. 判断是否 flaky 或环境特定。
5. 给出最小修复方案。
6. 重跑最小必要验证。

## 推荐搭配

- 真正修改代码：`trellis-lightweight-tdd`
- 根因还不清楚：`systematic-debugging`
- 修完准备合并：`ship-readiness`

## 调用示例

```text
用 fix-ci 看这个流水线失败，先告诉我最早的可行动错误是什么。
```
