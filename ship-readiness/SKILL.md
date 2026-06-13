---
name: ship-readiness
description: Use when work is nearly complete and needs a final readiness check for merge, release, or deployment. This skill focuses on remaining blockers, verification state, risks, rollback awareness, and documentation gaps.
license: MIT
---

# Ship Readiness

Use this skill near the end of a task to determine what is still missing before merge or release.

## Trigger Conditions

Use this skill when:
- the user asks what is left before merge
- the branch appears done and needs a readiness pass
- release notes, rollback concerns, or verification state matter
- CI, docs, risk, or testing status must be summarized
- the team needs a concise ship checklist

Do not use this skill at the beginning of implementation when the code has not yet been explored.

## Workflow

1. Summarize the intended change.
2. Check local verification and known automation state.
3. Identify remaining blockers and unresolved risks.
4. Consider docs, migrations, rollout, and rollback concerns.
5. Distinguish done items from open items.
6. Recommend the next actions in the smallest sensible order.

## Output

For non-trivial work, provide:
- done vs open checklist
- verification summary
- known risks
- release or merge concerns
- next actions

## Coordination

Before final shipping:
- use `fix-ci` if automation is still red
- use `browser-verification` and `security-review` when applicable
- use `docs-writer` if documentation is missing

## Invocation Examples

- "Use ship-readiness and tell me what is left before merge."
- "Use ship-readiness for this release candidate and list remaining blockers."
- "Use ship-readiness and summarize done vs missing work for this branch."
