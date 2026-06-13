---
name: release-rollout-strategy
description: Use when a change is shippable in principle but still needs a safer rollout shape, rollback plan, monitoring checkpoints, or staged release execution strategy.
license: MIT
---

# Release Rollout Strategy

Use this skill when the main question is how to release safely, not whether the code compiles.

## Trigger Conditions

Use this skill when:
- the user needs a phased, canary, or flag-based release plan
- rollout order matters across services, schemas, clients, or environments
- the team needs explicit rollback triggers and monitoring checkpoints
- release risk is non-trivial even after implementation is done
- the user asks for a safer production rollout shape

Do not use this skill for general implementation planning or for incident triage after a failure has already happened.

## Workflow

1. Summarize the change and deployment surfaces.
2. Identify rollout constraints, compatibility constraints, and risk hotspots.
3. Choose a rollout shape: big-bang, phased, canary, flag-gated, or staged migration.
4. Define checkpoints, owners, rollback triggers, and observation windows.
5. Call out prerequisites before rollout starts.
6. Recommend the final release sequence.

## Output

For non-trivial work, provide:
- rollout shape
- prerequisites
- checkpoints and monitoring focus
- rollback conditions
- sequencing guidance
- final release recommendation

## Coordination

After rollout design:
- use `ship-readiness` to confirm remaining blockers
- use `incident-observability-triage` if rollout concerns turn into live issues
- use `docs-writer` if operators or users need release notes or migration guidance

## Invocation Examples

- "Use release-rollout-strategy to design a safer launch plan for this feature."
- "Use release-rollout-strategy and give me checkpoints, rollback triggers, and monitoring focus."
- "Use release-rollout-strategy for this schema change so rollout order is explicit."
