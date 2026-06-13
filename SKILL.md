---
name: dev-workflow-kit
description: Use when a software task needs lifecycle support around coding itself: planning, debugging, CI repair, review comment resolution, browser verification, security review, ship-readiness, documentation writing, and other workflow analysis around delivery.
license: MIT
---

# Dev Workflow Kit

Use this skill as a catalog and router for software-development tasks that need more than implementation flow.

`dev-workflow-kit` is a standalone workflow kit for the broader delivery lifecycle: planning, debugging, CI, review, browser checks, security, release checks, documentation, and delivery analysis.

Default to the smallest lifecycle skill that resolves the current bottleneck. If the task becomes an implementation task, hand off to the repo's active coding workflow.

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

### 9. `change-impact-analysis`
Use when the biggest question is what a change will affect.

Choose this for:
- blast-radius mapping
- affected modules, clients, schemas, configs, and docs
- regression-zone identification
- verification-scope planning
- rollout caution analysis

Expected output:
- impacted surfaces, likely regressions, and verification focus

### 10. `architecture-refactor-guidance`
Use when the core question is about structure, boundaries, or safe refactor sequencing.

Choose this for:
- modular cleanup
- extracting seams or interfaces
- reducing coupling
- migration ordering for structural changes
- deciding whether a refactor should be split or staged

Expected output:
- structural assessment, refactor order, risk points, and preservation strategy

### 11. `incident-observability-triage`
Use when the investigation starts from production-style signals.

Choose this for:
- alerts or user-impact reports
- logs, metrics, traces, or dashboards
- blast-radius assessment
- mitigation-first incident handling
- deciding whether to stabilize first or diagnose deeper first

Expected output:
- impact summary, likely failure surface, mitigation direction, and next investigation steps

### 12. `dependency-compliance-audit`
Use when the main concern is third-party package risk or policy fit.

Choose this for:
- dependency risk review
- stale or vulnerable package decisions
- license or policy concerns
- supply-chain awareness
- deciding whether a package is safe to adopt or ship

Expected output:
- dependency risk summary, compliance concerns, and recommended next actions

### 13. `api-contract-compatibility-review`
Use when interface compatibility is the main risk.

Choose this for:
- endpoint changes
- request/response compatibility
- schema or event contract evolution
- versioning or deprecation questions
- migration guidance for consumers

Expected output:
- compatibility risks, breaking surfaces, and migration guidance

### 14. `release-rollout-strategy`
Use when the code may be ready but the release shape is not.

Choose this for:
- phased rollout
- canary or flag-gated release
- checkpoint and monitoring design
- rollback conditions
- release sequencing

Expected output:
- rollout plan, checkpoints, rollback rules, and release sequence

## Tie-Breaker Rules

When categories overlap:

- `planning` beats implementation-adjacent skills when scope or sequencing is still unclear.
- `change-impact-analysis` beats implementation planning when the main uncertainty is breadth of consequences.
- `fix-ci` beats `systematic-debugging` when the failure is clearly pipeline-first.
- `systematic-debugging` beats `fix-ci` when root cause is still unknown and not clearly CI-specific.
- `browser-verification` beats `ship-readiness` when visible UI behavior still lacks evidence.
- `security-review` beats `ship-readiness` when the gating concern is trust boundaries or abuse risk.
- `architecture-refactor-guidance` beats `planning` when the question is specifically about boundaries, modularity, or safe structural change.
- `incident-observability-triage` beats `systematic-debugging` when the investigation starts from alerts, logs, metrics, or blast radius.
- `dependency-compliance-audit` beats `security-review` when the main concern is third-party package risk, license, or policy fit.
- `api-contract-compatibility-review` beats generic impact analysis when the question is specifically about compatibility for existing consumers.
- `release-rollout-strategy` beats `ship-readiness` when the main uncertainty is how to release, not whether the work is complete.

## Handoff Logic

Use these common transitions:

- `planning` -> active implementation workflow
- `change-impact-analysis` -> `planning`, active implementation workflow, or `release-rollout-strategy`
- `architecture-refactor-guidance` -> active implementation workflow
- `systematic-debugging` -> active implementation workflow or `fix-ci`
- `incident-observability-triage` -> `systematic-debugging`, `security-review`, or active implementation workflow
- `fix-ci` -> active implementation workflow -> `ship-readiness`
- `api-contract-compatibility-review` -> `change-impact-analysis`, `release-rollout-strategy`, or `docs-writer`
- `dependency-compliance-audit` -> `security-review`, `docs-writer`, or `ship-readiness`
- `release-rollout-strategy` -> `ship-readiness`, `incident-observability-triage`, or `docs-writer`
- `docs-writer` only after behavior is stable enough to document

## Coordination Patterns

Typical flow:

1. Use `planning` when requirements or scope are unclear.
2. Use `change-impact-analysis` when the first question is what else the change touches.
3. Move into the active coding workflow for implementation and verification discipline.
4. Use `systematic-debugging` if execution stalls on unclear failures.
5. Use `fix-ci` if local success does not match pipeline status.
6. Use `review-address-comments` after review feedback arrives.
7. Use `browser-verification`, `security-review`, or `ship-readiness` before claiming completion when the task needs them.
8. Use `architecture-refactor-guidance` when the implementation question is really about structure.
9. Use `incident-observability-triage` when operational evidence drives the investigation.
10. Use `dependency-compliance-audit` when third-party package risk or policy fit is the blocker.
11. Use `api-contract-compatibility-review` when consumer compatibility is the main risk.
12. Use `release-rollout-strategy` when rollout shape, monitoring, or rollback design is the main question.
13. Use `docs-writer` to capture user-facing or developer-facing knowledge.

## Invocation Examples

- "Use dev-workflow-kit to decide whether this task needs planning, debugging, CI triage, or release checks."
- "Use the planning skill from dev-workflow-kit before we start implementation."
- "Use change-impact-analysis from dev-workflow-kit to show which modules and clients this change could affect."
- "Use systematic-debugging from dev-workflow-kit to reproduce and narrow this flaky test failure."
- "Use fix-ci from dev-workflow-kit to handle this pipeline failure."
- "Use ship-readiness from dev-workflow-kit and tell me what is left before merge."
- "Use architecture-refactor-guidance from dev-workflow-kit before we split this module boundary."
- "Use incident-observability-triage from dev-workflow-kit to triage this production alert from logs and metrics."
- "Use dependency-compliance-audit from dev-workflow-kit to review whether this new package is safe to adopt."
- "Use api-contract-compatibility-review from dev-workflow-kit to check whether this endpoint change breaks old clients."
- "Use release-rollout-strategy from dev-workflow-kit to design a safer rollout for this release."