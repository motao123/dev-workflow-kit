# review-address-comments

用于系统化处理 PR 评论、review 反馈和 requested changes。

## 适用场景

- PR 上有多条 comment
- Reviewer 提了 requested changes
- 多个评论其实指向同一类问题
- 需要处理完后给出一份清晰的解决摘要

## 标准流程

1. 收集并分组评论。
2. 区分必须处理和可选建议。
3. 合并重复问题。
4. 用最小改动解决被接受的反馈。
5. 验证涉及区域。
6. 输出解决摘要和剩余事项。

## 推荐搭配

- 真正改代码：`trellis-lightweight-tdd`
- 改完 CI 挂了：`fix-ci`
- 合并前总检查：`ship-readiness`

## 调用示例

```text
用 review-address-comments 把这一轮 review 意见分组并逐条处理。
```
