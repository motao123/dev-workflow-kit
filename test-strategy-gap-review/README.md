# test-strategy-gap-review

用于判断当前验证是否足够、缺哪些测试层、以及最该补哪一类覆盖。

## 适用场景

- 不确定这次改动的测试是否够用
- 测试不是没有，而是担心保护不到真正风险点
- 不知道该补 unit、integration、contract、browser 还是 smoke
- merge / release 卡在“信心不够”而不是“有明显报错”

## 标准流程

1. 找出这次改动的高风险行为。
2. 看现有验证覆盖了哪些层。
3. 找出缺失或薄弱的测试层。
4. 区分必须补和可选补充。
5. 给出最小高价值测试建议。
6. 给出下一步动作。

## 推荐搭配

- 影响面还不清：`change-impact-analysis`
- 真正去补测试：进入当前项目的实现工作流
- 发版前最后确认：`ship-readiness`

## 调用示例

```text
用 test-strategy-gap-review 看一下这次改动最缺哪类测试覆盖。
```
