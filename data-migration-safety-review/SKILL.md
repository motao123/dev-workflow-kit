---
name: data-migration-safety-review
description: Use when a schema change, backfill, data migration, or persistence-layer transition must be reviewed for rollout order, reversibility, backfill safety, and operational risk.
license: MIT
---

# Data Migration Safety Review

Use this skill when the main risk is changing persistent data safely rather than just changing code.

## Trigger Conditions

Use this skill when:
- a schema or database migration is planned
- a backfill, reindex, or persistent data rewrite is involved
- rollout order matters because old and new data shapes may coexist
- reversibility, idempotency, or migration safety is unclear
- the user wants a safety pass before running a high-risk data change

Do not use this skill for generic API compatibility questions or ordinary refactors with no persistence impact.

## Workflow

1. Identify the data surface under change.
2. Clarify whether the change is additive, destructive, backfill-based, dual-write, or format-transitional.
3. Identify rollout sequencing, coexistence windows, and rollback limits.
4. Assess safety risks such as partial backfill, inconsistent reads, write drift, or irreversible mutation.
5. Recommend the safest migration path and verification points.
6. Call out what should be documented or operationally staged.

## Output

For non-trivial work, provide:
- migration type
- main data safety risks
- rollout and rollback constraints
- verification or backfill checkpoints
- recommended next step

## Coordination

After migration review:
- use `api-contract-compatibility-review` if data shape changes affect external contracts
- use `release-rollout-strategy` if deployment order must be carefully staged
- use `docs-writer` if runbooks or migration notes must be published

## Invocation Examples

- "Use data-migration-safety-review before we run this schema backfill in production."
- "Use data-migration-safety-review to check whether this migration is safely reversible."
- "Use data-migration-safety-review because old and new data shapes may coexist during rollout."
