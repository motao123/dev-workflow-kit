---
name: systematic-debugging
description: Use when a bug, flaky test, or runtime failure does not have an obvious root cause. This skill emphasizes reproduction, narrowing the search space, hypothesis testing, and evidence before proposing a fix.
license: MIT
---

# Systematic Debugging

Use this skill when the problem is not yet understood well enough to fix safely.

## Trigger Conditions

Use this skill when:
- a bug is intermittent or environment-specific
- a test fails without a clear reason
- symptoms are broad and the root cause is unknown
- multiple possible failure layers exist
- the user wants reproduction and diagnosis before implementation

Do not use this skill for obvious typo-level fixes or when the exact code change is already known.

## Workflow

1. Capture the observed failure and current evidence.
2. Reproduce the issue or narrow why it cannot be reproduced.
3. Reduce the search space by layer, component, or recent change.
4. Form hypotheses and test them one by one.
5. Separate symptoms from likely root cause.
6. Recommend the smallest safe fix path.

## Output

For non-trivial work, provide:
- observed behavior
- reproduction status
- narrowed scope
- hypotheses tested
- likely root cause
- recommended next step

## Coordination

After diagnosis:
- use `trellis-lightweight-tdd` for the actual fix
- use `fix-ci` if the main failure surface is pipeline-only
- use `browser-verification` when the bug is UI-visible

## Invocation Examples

- "Use systematic-debugging to reproduce and narrow this flaky test failure."
- "Use systematic-debugging before changing code; I want the root cause first."
- "Use systematic-debugging to trace whether this is frontend, API, or database breakage."
