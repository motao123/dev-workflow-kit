---
name: change-impact-analysis
description: Use when the main question is what a proposed or partial change will affect across code, interfaces, configs, tests, docs, consumers, and rollout surfaces. This skill maps blast radius before implementation, merge, or release.
license: MIT
---

# Change Impact Analysis

Use this skill when the key uncertainty is breadth of impact rather than how to write the code.

## Trigger Conditions

Use this skill when:
- a change may affect multiple modules, consumers, or environments
- the team needs to know what else must be updated before implementation
- API, schema, config, docs, tests, or rollout surfaces may be touched indirectly
- the user asks what could break if a change goes in
- release risk depends on understanding downstream effects first

Do not use this skill for root-cause debugging or for deciding the internal structure of a refactor.

## Workflow

1. Identify the proposed or in-progress change.
2. Map directly touched files, modules, contracts, configs, and consumers.
3. Identify likely indirect effects and regression zones.
4. Separate must-check surfaces from lower-risk surfaces.
5. Recommend verification focus and rollout cautions.
6. Hand off to the next workflow step.

## Output

For non-trivial work, provide:
- impacted surfaces
- direct vs indirect consequences
- likely regression zones
- verification focus areas
- rollout or migration cautions
- recommended next action

## Coordination

After impact analysis:
- use `planning` if scope needs to be re-sliced
- move into the active implementation workflow for execution
- use `ship-readiness` or `release-rollout-strategy` when impact affects release shape

## Invocation Examples

- "Use change-impact-analysis to show what else this schema change could affect."
- "Use change-impact-analysis before implementation so we know which tests, docs, and clients are in scope."
- "Use change-impact-analysis to identify the likely regression zones for this config change."
