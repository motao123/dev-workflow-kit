# browser-verification

用于前端和 Web UI 的浏览器级验证。

## 适用场景

- 页面行为变了
- 表单、弹窗、导航、交互需要走一遍
- 需要看控制台错误
- 单测通过但还需要用户路径证据

## 标准流程

1. 定义要验证的用户路径。
2. 明确黄金路径和高风险边界。
3. 在浏览器中执行。
4. 观察页面、状态变化、console/network。
5. 记录通过/失败证据。
6. 如果无法实际打开浏览器，明确说明缺口。

## 推荐搭配

- 发现问题后修复：进入当前项目的实现工作流
- UI 问题根因不明：`systematic-debugging`
- 发布前验收：`ship-readiness`

## 调用示例

```text
用 browser-verification 跑一下这个新表单流程，顺便看有没有 console error。
```
