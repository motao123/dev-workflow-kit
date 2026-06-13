---
name: dev-workflow-kit
description: Use when a software task needs lifecycle support around coding itself: planning, debugging, CI repair, review comment resolution, browser verification, security review, ship-readiness, or documentation writing. This pack complements trellis-lightweight-tdd by covering the stages before coding, around integration, and after implementation.
license: MIT
---

# Dev Workflow Kit

Use this skill as a catalog and router for software-development tasks that need more than implementation flow.

This pack complements `trellis-lightweight-tdd`:

- `trellis-lightweight-tdd` is for coding execution, TDD discipline, and Trellis-aware implementation flow.
- `dev-workflow-kit` is for the surrounding lifecycle: planning, debugging, CI, review, browser checks, security, release checks, and documentation.

Default to the smallest lifecycle skill that resolves the current bottleneck. If the task becomes an implementation task, hand off to `trellis-lightweight-tdd` or the repo's active coding workflow.

## Dispatch Heuristics

Use these rules before routing:

- Choose by the current bottleneck, not the eventual final goal.
- Choose the smallest skill that resolves the present uncertainty.
- If the user is asking what to do before implementation, prefer analysis and planning skills.
- If the user is asking whether work is ready, prefer end-state verification and readiness skills.
- If multiple skills seem relevant, start with the earliest blocking concern and then hand off.

## Trigger Conditions

Use this skill when any of these are true:

- The user needs help deciding what to build before coding starts.
- The problem is a bug, flaky behavior, or unclear failure that needs structured debugging.
- The branch is blocked by CI, build, lint, type-check, or test failures.
- The user wants help processing PR comments, review feedback, or code-review actions.
- The task requires browser/UI verification beyond unit tests.
- The change touches auth, permissions, secrets, untrusted input, or security boundaries.
- The user asks whether work is ready to merge, release, or ship.
- The user needs README, migration notes, release notes, examples, or developer-facing docs.

Do not use this skill for pure coding execution when another implementation workflow is already clear.

## Skill Router

### 1. `planning`
Use when the task is still fuzzy.

Choose this for:
- scope definition
- acceptance criteria
- implementation slicing
- risk and dependency mapping
- choosing the right verification plan

Expected output:
- a concrete implementation plan or task breakdown

### 2. `systematic-debugging`
Use when the fix is not obvious.

Choose this for:
- intermittent bugs
- environment-specific failures
- regressions without a clear root cause
- failures that need reproduction before implementation

Expected output:
- reproduction steps, hypotheses, narrowed scope, likely root cause, and next fix path

### 3. `fix-ci`
Use when the branch is blocked by automation.

Choose this for:
- failing tests in CI
- lint/type/build failures
- packaging or environment issues exposed only in pipelines

Expected output:
- earliest failing step, root-cause classification, and minimal repair plan

### 4. `review-address-comments`
Use when collaboration is the bottleneck.

Choose this for:
- PR review comments
- requested changes
- follow-up edits after human or automated review

Expected output:
- grouped comments, action plan, and resolution summary

### 5. `browser-verification`
Use when correctness must be seen, not inferred.

Choose this for:
- web UI changes
- form workflows
- navigation or interaction bugs
- smoke checks that need browser evidence

Expected output:
- browser test steps, observations, screenshots or logs when available, and pass/fail evidence

### 6. `security-review`
Use when a change crosses trust boundaries.

Choose this for:
- auth/authz changes
- untrusted input handling
- secret or token handling
- file upload, redirect, query, shell, or DB-risk surfaces

Expected output:
- risk list, severity, remediation guidance, and verification ideas

### 7. `ship-readiness`
Use when the change is almost done.

Choose this for:
- merge readiness
- release checklists
- rollback considerations
- identifying remaining blockers before shipping

Expected output:
- ship checklist, open risks, verification summary, and next actions

### 8. `docs-writer`
Use when knowledge needs to be captured for others.

Choose this for:
- README updates
- migration guides
- release notes
- usage examples
- internal developer docs

Expected output:
- documentation draft grounded in the current code and behavior

### 9. `architecture-refactor-guidance`
Use when the core question is about structure, boundaries, or safe refactor sequencing.

Choose this for:
- modular cleanup
- extracting seams or interfaces
- reducing coupling
- migration ordering for structural changes
- deciding whether a refactor should be split or staged

Expected output:
- structural assessment, refactor order, risk points, and preservation strategy

### 10. `incident-observability-triage`
Use when the investigation starts from production-style signals.

Choose this for:
- alerts or user-impact reports
- logs, metrics, traces, or dashboards
- blast-radius assessment
- mitigation-first incident handling
- deciding whether to stabilize first or diagnose deeper first

Expected output:
- impact summary, likely failure surface, mitigation direction, and next investigation steps

### 11. `dependency-compliance-audit`
Use when the main concern is third-party package risk or policy fit.

Choose this for:
- dependency risk review
- stale or vulnerable package decisions
- license or policy concerns
- supply-chain awareness
- deciding whether a package is safe to adopt or ship

Expected output:
- dependency risk summary, compliance concerns, and recommended next actions

## Tie-Breaker Rules

When categories overlap:

- `planning` beats implementation-adjacent skills when scope or sequencing is still unclear.
- `fix-ci` beats `systematic-debugging` when the failure is clearly pipeline-first.
- `systematic-debugging` beats `fix-ci` when root cause is still unknown and not clearly CI-specific.
- `browser-verification` beats `ship-readiness` when visible UI behavior still lacks evidence.
- `security-review` beats `ship-readiness` when the gating concern is trust boundaries or abuse risk.
- `architecture-refactor-guidance` beats `planning` when the question is specifically about boundaries, modularity, or safe structural change.
- `incident-observability-triage` beats `systematic-debugging` when the investigation starts from alerts, logs, metrics, or blast radius.
- `dependency-compliance-audit` beats `security-review` when the main concern is third-party package risk, license, or policy fit.

## Handoff Logic

Use these common transitions:

- `planning` -> `trellis-lightweight-tdd`
- `architecture-refactor-guidance` -> `trellis-lightweight-tdd`
- `systematic-debugging` -> `trellis-lightweight-tdd` or `fix-ci`
- `incident-observability-triage` -> `systematic-debugging`, `security-review`, or `trellis-lightweight-tdd`
- `fix-ci` -> `trellis-lightweight-tdd` -> `ship-readiness`
- `dependency-compliance-audit` -> `security-review`, `docs-writer`, or `ship-readiness`
- `docs-writer` only after behavior is stable enough to document

## Coordination With `trellis-lightweight-tdd`

Typical flow:

1. Use `planning` when requirements or scope are unclear.
2. Use `trellis-lightweight-tdd` for implementation and verification discipline.
3. Use `systematic-debugging` if execution stalls on unclear failures.
4. Use `fix-ci` if local success does not match pipeline status.
5. Use `review-address-comments` after review feedback arrives.
6. Use `browser-verification`, `security-review`, or `ship-readiness` before claiming completion when the task needs them.
7. Use `architecture-refactor-guidance` when the implementation question is really about structure.
8. Use `incident-observability-triage` when operational evidence drives the investigation.
9. Use `dependency-compliance-audit` when third-party package risk or policy fit is the blocker.
10. Use `docs-writer` to capture user-facing or developer-facing knowledge.

## Invocation Examples

- "Use dev-workflow-kit to decide whether this task needs planning, debugging, CI triage, or release checks."
- "Use the planning skill from dev-workflow-kit before we start implementation."
- "Use systematic-debugging from dev-workflow-kit to reproduce and narrow this flaky test failure."
- "Use fix-ci from dev-workflow-kit to handle this pipeline failure."
- "Use ship-readiness from dev-workflow-kit and tell me what is left before merge."
- "Use architecture-refactor-guidance from dev-workflow-kit before we split this module boundary."
- "Use incident-observability-triage from dev-workflow-kit to triage this production alert from logs and metrics."
- "Use dependency-compliance-audit from dev-workflow-kit to review whether this new package is safe to adopt."