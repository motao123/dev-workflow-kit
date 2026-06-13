# docs-writer

用于把真实代码行为沉淀成 README、迁移说明、release note、示例和开发文档。

## 适用场景

- README 需要更新
- 有 breaking change，需要 migration note
- 需要补使用示例
- 需要面向开发者补文档

## 标准流程

1. 先读代码和现有文档。
2. 明确受众是谁。
3. 只写当前真实存在的行为。
4. 用最小文档补足知识缺口。
5. 需要示例时给出可操作步骤。
6. 如果依赖未验证行为，明确说明。

## 推荐搭配

- 实现还没稳定：`trellis-lightweight-tdd`
- 发布前检查：`ship-readiness`
- 牵涉敏感运维说明：`security-review`

## 调用示例

```text
用 docs-writer 更新这个新安装流程的 README 和使用示例。
```
