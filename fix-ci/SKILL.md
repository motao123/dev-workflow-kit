---
name: fix-ci
description: Use when CI, build, lint, type-check, or test automation is failing and the branch is blocked. This skill focuses on reading the earliest failure, classifying the failure surface, and choosing the smallest repair that restores pipeline health.
license: MIT
---

# Fix CI

Use this skill when automation disagrees with local assumptions or blocks integration.

## Trigger Conditions

Use this skill when:
- CI is red
- lint, test, build, or type-check fails in the pipeline
- the branch passes locally but fails remotely
- logs are noisy and the earliest failure needs to be extracted
- the user wants the minimal change that unblocks the pipeline

Do not use this skill for planning-only tasks or for broad product design questions.

## Workflow

1. Read the earliest meaningful failure first.
2. Classify the failing stage: lint, type, unit test, integration test, build, packaging, environment.
3. Separate root-cause failure from downstream noise.
4. Check whether the failure is deterministic, flaky, or environment-specific.
5. Recommend the smallest repair with the highest confidence.
6. Re-run the narrowest useful verification.

## Output

For non-trivial work, provide:
- failing stage
- first actionable error
- likely cause
- minimal repair path
- verification to re-run

## Coordination

After CI diagnosis:
- use `trellis-lightweight-tdd` for code fixes
- use `systematic-debugging` if root cause is still unclear
- use `ship-readiness` once pipeline health is restored

## Invocation Examples

- "Use fix-ci to inspect this pipeline failure and find the first actionable error."
- "Use fix-ci because local tests pass but CI is still red."
- "Use fix-ci and tell me the smallest change that should unblock the branch."
