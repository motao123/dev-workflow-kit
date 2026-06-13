# dependency-compliance-audit

用于第三方依赖风险、license、合规、供应链相关评估。

## 适用场景

- 想引入一个新依赖，但不确定是否合适
- 关注点是 license、policy、来源、供应链风险
- 某个依赖太旧、太脆弱，想判断是否还能继续带着走
- 发布前担心依赖本身成为阻塞项

## 标准流程

1. 识别要评估的依赖。
2. 判断问题属于安全、license、policy、维护状态、来源还是升级兼容性。
3. 把依赖问题和代码路径问题分开。
4. 给出风险分类和可选决策。
5. 推荐最小下一步动作。
6. 标出是否需要后续文档或进一步审查。

## 推荐搭配

- 扩展到运行时安全：`security-review`
- 需要记录规范或迁移：`docs-writer`
- 成为发版阻塞：`ship-readiness`

## 调用示例

```text
用 dependency-compliance-audit 评估这个新依赖的风险、license 和是否适合上线。
```
