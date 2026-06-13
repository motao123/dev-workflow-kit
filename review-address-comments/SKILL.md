---
name: review-address-comments
description: Use when review comments, requested changes, or PR feedback must be processed systematically. This skill groups comments, decides what to accept, and turns feedback into verified edits instead of ad hoc reactions.
license: MIT
---

# Review Address Comments

Use this skill when collaboration after implementation becomes the main task.

## Trigger Conditions

Use this skill when:
- a PR has reviewer comments
- the user asks to address requested changes
- feedback needs to be grouped or prioritized
- multiple comment threads refer to overlapping concerns
- the branch needs a clear resolution summary after edits

Do not use this skill for initial implementation planning or for pure status lookups without feedback to process.

## Workflow

1. Gather the comments and group them by theme.
2. Distinguish must-fix issues from optional suggestions.
3. Identify overlapping comments and consolidate the work.
4. Apply the smallest changes that resolve accepted feedback.
5. Verify each changed area.
6. Summarize what was addressed and any intentional non-changes.

## Output

For non-trivial work, provide:
- grouped feedback themes
- accepted vs deferred items
- edit plan
- verification evidence
- resolution summary

## Coordination

After comment processing:
- hand off to the active coding workflow for implementation edits
- use `fix-ci` if review-triggered changes break automation
- use `ship-readiness` before final merge

## Invocation Examples

- "Use review-address-comments to classify and resolve this PR feedback."
- "Use review-address-comments and turn these requested changes into an action list."
- "Use review-address-comments after the last review round and summarize what remains."
