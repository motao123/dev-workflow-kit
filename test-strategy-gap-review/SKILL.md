---
name: test-strategy-gap-review
description: Use when the main question is whether current verification is sufficient for a change, which test layers are missing, and where the smallest high-value regression protection should be added.
license: MIT
---

# Test Strategy Gap Review

Use this skill when the issue is not a failing test, but uncertainty about whether the current test strategy is strong enough.

## Trigger Conditions

Use this skill when:
- the user asks what tests are missing
- a risky change has weak or uneven verification coverage
- the team is unsure whether to add unit, integration, contract, browser, or smoke coverage
- the change is hard to ship confidently because test coverage feels incomplete
- there is concern that current tests exist but do not protect the right behaviors

Do not use this skill for root-cause debugging of a failing test or for CI triage when the failure is already known.

## Workflow

1. Identify the change and its highest-risk behaviors.
2. Review existing verification surfaces.
3. Identify missing or weak coverage layers.
4. Separate must-add coverage from nice-to-have coverage.
5. Recommend the smallest high-value additions.
6. Suggest the next verification or implementation step.

## Output

For non-trivial work, provide:
- current verification picture
- missing or weak test layers
- highest-risk blind spots
- smallest useful coverage additions
- recommended next step

## Coordination

After test strategy review:
- use `change-impact-analysis` if the affected surface is still unclear
- move into the active implementation workflow to add or adjust verification
- use `ship-readiness` when test coverage is the last release blocker

## Invocation Examples

- "Use test-strategy-gap-review to tell me what coverage is missing before we merge this change."
- "Use test-strategy-gap-review to decide whether this needs unit, integration, or browser checks."
- "Use test-strategy-gap-review because the current tests exist, but I don't trust that they cover the risky behavior."
