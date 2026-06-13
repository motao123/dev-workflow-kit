---
name: cost-impact-review
description: Use when a change may increase infrastructure or runtime cost (compute, storage, network egress, third-party API calls, observability volume) and the team needs a focused cost-impact review before merge or rollout.
license: MIT
---

# Cost Impact Review

Use this skill when the main risk is unit economics or infra cost regression, not correctness.

## Trigger Conditions

Use this skill when:
- a change adds new database queries, API calls, or background work that may scale per-request
- caching, batching, or pagination behavior is changing
- third-party SaaS or paid API usage may grow
- log, trace, or metric volume may increase noticeably
- the team wants a cost regression check before release

Do not use this skill for license/compliance review or for performance investigation of an existing slowdown.

## Workflow

1. Identify the change and the cost drivers it touches.
2. Estimate cost direction: per-request, per-user, per-event, or per-deploy.
3. Compare with cheaper alternatives (caching, batching, lazy paths).
4. Flag risk hotspots that scale with traffic.
5. Recommend smallest mitigations or a measurement plan.
6. Suggest verification once rollout begins.

## Output

For non-trivial work, provide:
- affected cost drivers
- likely cost direction and rough magnitude
- risk hotspots
- recommended optimizations or guards
- verification plan

## Coordination

After cost review:
- use `architecture-refactor-guidance` if a structural change is the right mitigation
- use `release-rollout-strategy` to add cost-aware checkpoints
- use `ship-readiness` if cost risk is the last release blocker

## Invocation Examples

- "Use cost-impact-review from dev-workflow-kit to check whether this change increases infra or per-request cost."
- "Use cost-impact-review to estimate whether this new third-party call will materially raise our bill."
- "Use cost-impact-review before release because the new query might run on every page load."
