---
name: browser-verification
description: Use when a change needs browser-level evidence such as UI flow checks, form interaction validation, console inspection, or end-to-end smoke verification. This skill focuses on observable behavior instead of code assumptions.
license: MIT
---

# Browser Verification

Use this skill when correctness must be demonstrated through browser behavior.

## Trigger Conditions

Use this skill when:
- the task changes frontend or web UI behavior
- a form, modal, navigation, or interaction flow must be checked
- screenshots, observations, or console inspection matter
- the user asks for smoke or browser verification
- automated unit tests are not enough to prove the golden path

Do not use this skill for backend-only changes with no user-visible surface.

## Workflow

1. Identify the user-visible behavior to verify.
2. Define the critical golden path and any risky edge paths.
3. Exercise the flow in the browser or equivalent UI environment.
4. Observe visible output, state transitions, and console/network issues.
5. Record pass/fail evidence.
6. Note remaining gaps if browser access is unavailable.

## Output

For non-trivial work, provide:
- flows checked
- observations
- errors found or absence of errors
- evidence type used
- remaining gaps

## Coordination

After verification:
- move into the active implementation workflow if fixes are needed
- use `systematic-debugging` for unclear UI failures
- use `ship-readiness` when browser checks are part of release gates

## Invocation Examples

- "Use browser-verification to smoke test this new form flow."
- "Use browser-verification and check the golden path plus console errors."
- "Use browser-verification for this UI regression before we call it done."
