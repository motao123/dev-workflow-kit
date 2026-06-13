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

### 2. `test-strategy-gap-review`
Use when the main uncertainty is whether current verification is sufficient.

Choose this for:
- missing test coverage
- weak regression protection
- uncertain verification mix
- choosing between unit, integration, contract, browser, or smoke layers
- deciding the smallest high-value test additions

Expected output:
- missing test layers, blind spots, and highest-value coverage additions

### 3. `systematic-debugging`
Use when the fix is not obvious.

Choose this for:
- intermittent bugs
- environment-specific failures
- regressions without a clear root cause
- failures that need reproduction before implementation

Expected output:
- reproduction steps, hypotheses, narrowed scope, likely root cause, and next fix path

### 4. `fix-ci`
Use when the branch is blocked by automation.

Choose this for:
- failing tests in CI
- lint/type/build failures
- packaging or environment issues exposed only in pipelines

Expected output:
- earliest failing step, root-cause classification, and minimal repair plan

### 5. `review-address-comments`
Use when collaboration is the bottleneck.

Choose this for:
- PR review comments
- requested changes
- follow-up edits after human or automated review

Expected output:
- grouped comments, action plan, and resolution summary

### 6. `browser-verification`
Use when correctness must be seen, not inferred.

Choose this for:
- web UI changes
- form workflows
- navigation or interaction bugs
- smoke checks that need browser evidence

Expected output:
- browser test steps, observations, screenshots or logs when available, and pass/fail evidence

### 7. `security-review`
Use when a change crosses trust boundaries.

Choose this for:
- auth/authz changes
- untrusted input handling
- secret or token handling
- file upload, redirect, query, shell, or DB-risk surfaces

Expected output:
- risk list, severity, remediation guidance, and verification ideas

### 8. `ship-readiness`
Use when the change is almost done.

Choose this for:
- merge readiness
- release checklists
- rollback considerations
- identifying remaining blockers before shipping

Expected output:
- ship checklist, open risks, verification summary, and next actions

### 9. `docs-writer`
Use when knowledge needs to be captured for others.

Choose this for:
- README updates
- migration guides
- release notes
- usage examples
- internal developer docs

Expected output:
- documentation draft grounded in the current code and behavior

### 10. `change-impact-analysis`
Use when the biggest question is what a change will affect.

Choose this for:
- blast-radius mapping
- affected modules, clients, schemas, configs, and docs
- regression-zone identification
- verification-scope planning
- rollout caution analysis

Expected output:
- impacted surfaces, likely regressions, and verification focus

### 11. `architecture-refactor-guidance`
Use when the core question is about structure, boundaries, or safe refactor sequencing.

Choose this for:
- modular cleanup
- extracting seams or interfaces
- reducing coupling
- migration ordering for structural changes
- deciding whether a refactor should be split or staged

Expected output:
- structural assessment, refactor order, risk points, and preservation strategy

### 12. `incident-observability-triage`
Use when the investigation starts from production-style signals.

Choose this for:
- alerts or user-impact reports
- logs, metrics, traces, or dashboards
- blast-radius assessment
- mitigation-first incident handling
- deciding whether to stabilize first or diagnose deeper first

Expected output:
- impact summary, likely failure surface, mitigation direction, and next investigation steps

### 13. `dependency-compliance-audit`
Use when the main concern is third-party package risk or policy fit.

Choose this for:
- dependency risk review
- stale or vulnerable package decisions
- license or policy concerns
- supply-chain awareness
- deciding whether a package is safe to adopt or ship

Expected output:
- dependency risk summary, compliance concerns, and recommended next actions

### 14. `api-contract-compatibility-review`
Use when interface compatibility is the main risk.

Choose this for:
- endpoint changes
- request/response compatibility
- schema or event contract evolution
- versioning or deprecation questions
- migration guidance for consumers

Expected output:
- compatibility risks, breaking surfaces, and migration guidance

### 15. `release-rollout-strategy`
Use when the code may be ready but the release shape is not.

Choose this for:
- phased rollout
- canary or flag-gated release
- checkpoint and monitoring design
- rollback conditions
- release sequencing

Expected output:
- rollout plan, checkpoints, rollback rules, and release sequence

### 16. `performance-investigation`
Use when slowness or resource pressure is the core problem.

Choose this for:
- latency regressions
- throughput bottlenecks
- CPU or memory pressure
- render slowness or heavy queries
- narrowing likely performance hotspots

Expected output:
- likely bottleneck class, hotspots, and next measurement or mitigation steps

### 17. `environment-config-audit`
Use when environment parity or configuration assumptions are the real risk.

Choose this for:
- config drift
- env var or secret mismatch
- feature flag rollout assumptions
- dangerous defaults
- deploy-time configuration risk

Expected output:
- parity risks, config blockers, and recommended next checks

### 18. `data-migration-safety-review`
Use when the main risk is changing persistent data safely.

Choose this for:
- schema migrations
- backfills or reindex operations
- dual-write or coexistence windows
- reversibility concerns
- rollout ordering for persistent data changes

Expected output:
- migration risks, rollback limits, and safest staged path

### 19. `release-incident-postmortem`
Use when an incident has already been mitigated and the team needs structured retrospective work.

Choose this for:
- post-incident timeline and impact reconstruction
- root cause and contributing factors
- mitigation steps actually taken
- follow-up actions, owners, and prevention work
- formal postmortem documentation

Expected output:
- timeline, impact, root cause, mitigations, follow-up actions, and recommended preventive changes

### 20. `cost-impact-review`
Use when a change may increase infra or runtime cost rather than break correctness.

Choose this for:
- new queries, API calls, or background work that scales per-request
- caching, batching, or pagination changes
- third-party SaaS or paid API usage growth
- log, trace, or metric volume regressions
- cost regression checks before merge or rollout

Expected output:
- affected cost drivers, likely cost direction, risk hotspots, recommended optimizations, and verification plan

### 21. `data-quality-audit`
Use when existing runtime data may be wrong, stale, incomplete, or inconsistent.

Choose this for:
- suspect values in a dataset, table, or event stream
- nullability, uniqueness, foreign-key, or enum integrity concerns
- freshness or completeness questions
- duplicate, drifted, or orphaned record suspicion
- data-trust pass before release or downstream reuse

Expected output:
- dataset reviewed, quality dimensions, key anomalies and severity, recommended remediation, and monitoring suggestions

## Tie-Breaker Rules

When categories overlap:

- `planning` beats implementation-adjacent skills when scope or sequencing is still unclear.
- `test-strategy-gap-review` beats generic planning when the main question is whether verification is sufficient.
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
- `performance-investigation` beats `systematic-debugging` when latency, throughput, resource usage, or slowness are the core symptom.
- `environment-config-audit` beats `fix-ci` when the issue is environment parity, secrets, flags, or deploy-time assumptions rather than a single pipeline failure.
- `data-migration-safety-review` beats generic rollout planning when persistent data transition risk is the main concern.
- `release-incident-postmortem` beats `incident-observability-triage` when the incident is already mitigated and the focus is structured retrospective.
- `cost-impact-review` beats `dependency-compliance-audit` when the main question is unit economics or infra cost regression rather than license or supply-chain fit.
- `data-quality-audit` beats `data-migration-safety-review` when the concern is correctness or freshness of existing data, not the migration itself.

## Handoff Logic

Use these common transitions:

- `planning` -> active implementation workflow
- `test-strategy-gap-review` -> active implementation workflow, `change-impact-analysis`, or `ship-readiness`
- `change-impact-analysis` -> `planning`, active implementation workflow, or `release-rollout-strategy`
- `architecture-refactor-guidance` -> active implementation workflow
- `systematic-debugging` -> active implementation workflow or `fix-ci`
- `incident-observability-triage` -> `systematic-debugging`, `security-review`, or active implementation workflow
- `fix-ci` -> active implementation workflow -> `ship-readiness`
- `api-contract-compatibility-review` -> `change-impact-analysis`, `release-rollout-strategy`, `data-migration-safety-review`, or `docs-writer`
- `dependency-compliance-audit` -> `security-review`, `docs-writer`, or `ship-readiness`
- `release-rollout-strategy` -> `ship-readiness`, `incident-observability-triage`, `data-migration-safety-review`, or `docs-writer`
- `performance-investigation` -> `incident-observability-triage`, `systematic-debugging`, or active implementation workflow
- `environment-config-audit` -> `release-rollout-strategy`, `ship-readiness`, or `docs-writer`
- `data-migration-safety-review` -> `api-contract-compatibility-review`, `release-rollout-strategy`, or `docs-writer`
- `release-incident-postmortem` -> `docs-writer`, `release-rollout-strategy`, or `systematic-debugging`
- `cost-impact-review` -> `architecture-refactor-guidance`, `release-rollout-strategy`, or `ship-readiness`
- `data-quality-audit` -> `data-migration-safety-review`, `systematic-debugging`, or `docs-writer`
- `docs-writer` only after behavior is stable enough to document

## Coordination Patterns

Typical flow:

1. Use `planning` when requirements or scope are unclear.
2. Use `test-strategy-gap-review` when the main concern is whether verification is sufficient.
3. Use `change-impact-analysis` when the first question is what else the change touches.
4. Move into the active coding workflow for implementation and verification discipline.
5. Use `systematic-debugging` if execution stalls on unclear failures.
6. Use `fix-ci` if local success does not match pipeline status.
7. Use `review-address-comments` after review feedback arrives.
8. Use `browser-verification`, `security-review`, or `ship-readiness` before claiming completion when the task needs them.
9. Use `architecture-refactor-guidance` when the implementation question is really about structure.
10. Use `incident-observability-triage` when operational evidence drives the investigation.
11. Use `dependency-compliance-audit` when third-party package risk or policy fit is the blocker.
12. Use `api-contract-compatibility-review` when consumer compatibility is the main risk.
13. Use `release-rollout-strategy` when rollout shape, monitoring, or rollback design is the main question.
14. Use `performance-investigation` when slowness or resource pressure is the real issue.
15. Use `environment-config-audit` when config parity or deploy-time assumptions are the real risk.
16. Use `data-migration-safety-review` when persistent data safety is the main release concern.
17. Use `release-incident-postmortem` after an incident has been mitigated and a structured retrospective is needed.
18. Use `cost-impact-review` when infra or per-request cost regression is the main risk.
19. Use `data-quality-audit` when existing runtime data correctness or freshness is in question.
20. Use `docs-writer` to capture user-facing or developer-facing knowledge.

## Invocation Examples

- "Use dev-workflow-kit to decide whether this task needs planning, debugging, CI triage, or release checks."
- "Use the planning skill from dev-workflow-kit before we start implementation."
- "Use test-strategy-gap-review from dev-workflow-kit to tell me what coverage is missing before merge."
- "Use change-impact-analysis from dev-workflow-kit to show which modules and clients this change could affect."
- "Use systematic-debugging from dev-workflow-kit to reproduce and narrow this flaky test failure."
- "Use fix-ci from dev-workflow-kit to handle this pipeline failure."
- "Use ship-readiness from dev-workflow-kit and tell me what is left before merge."
- "Use architecture-refactor-guidance from dev-workflow-kit before we split this module boundary."
- "Use incident-observability-triage from dev-workflow-kit to triage this production alert from logs and metrics."
- "Use dependency-compliance-audit from dev-workflow-kit to review whether this new package is safe to adopt."
- "Use api-contract-compatibility-review from dev-workflow-kit to check whether this endpoint change breaks old clients."
- "Use release-rollout-strategy from dev-workflow-kit to design a safer rollout for this release."
- "Use performance-investigation from dev-workflow-kit to narrow this latency regression before optimizing."
- "Use environment-config-audit from dev-workflow-kit to compare staging and prod assumptions before release."
- "Use data-migration-safety-review from dev-workflow-kit before we run this schema backfill in production."
- "Use release-incident-postmortem from dev-workflow-kit to run a structured postmortem on this outage now that mitigation is complete."
- "Use cost-impact-review from dev-workflow-kit to check whether this change increases infra or per-request cost."
- "Use data-quality-audit from dev-workflow-kit to assess freshness, completeness, and correctness of this dataset."