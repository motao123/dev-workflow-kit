---
name: api-contract-compatibility-review
description: Use when an API, schema, payload, event, or contract change must be checked for backward compatibility, client impact, versioning risk, and migration safety.
license: MIT
---

# API Contract Compatibility Review

Use this skill when the main risk is breaking consumers through interface changes.

## Trigger Conditions

Use this skill when:
- request or response shapes are changing
- schema, event, or payload contracts may break old clients or downstream services
- the user asks whether a change is backward compatible
- versioning, migration, or deprecation strategy needs review
- integration risk matters more than internal implementation details

Do not use this skill for generic refactor planning or dependency/license review.

## Workflow

1. Identify the contract under change.
2. Compare current and proposed behavior or shapes.
3. Check backward and forward compatibility risks.
4. Identify affected consumers, migration needs, and deprecation concerns.
5. Recommend versioning or rollout safeguards.
6. Suggest verification and communication steps.

## Output

For non-trivial work, provide:
- contract surface reviewed
- compatibility risks
- likely breaking changes
- migration or versioning guidance
- verification focus
- recommended next action

## Coordination

After contract review:
- use `change-impact-analysis` if the consumer surface is still unclear
- use `release-rollout-strategy` when compatibility risk changes rollout shape
- use `docs-writer` when migration guidance or deprecation notes should be published

## Invocation Examples

- "Use api-contract-compatibility-review to check whether this endpoint change breaks old clients."
- "Use api-contract-compatibility-review on this event schema update before release."
- "Use api-contract-compatibility-review and tell me whether we need versioning or migration guidance."
