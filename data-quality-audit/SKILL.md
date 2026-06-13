---
name: data-quality-audit
description: Use when existing data correctness, freshness, completeness, or constraint integrity is in question at runtime, distinct from migration-time safety.
license: MIT
---

# Data Quality Audit

Use this skill when the runtime data itself may be wrong, stale, incomplete, or inconsistent.

## Trigger Conditions

Use this skill when:
- a dataset, table, or event stream has suspect values
- nullability, uniqueness, foreign-key, or enum integrity may be violated
- freshness or completeness is in question
- duplicate, drifted, or orphaned records are suspected
- the team wants a data-trust pass before a release or downstream use

Do not use this skill for migration planning, code-path debugging, or schema design.

## Workflow

1. Identify the dataset under review and its purpose.
2. List the relevant quality dimensions: correctness, completeness, freshness, uniqueness, referential integrity, schema conformance.
3. Surface anomalies and likely failure modes.
4. Separate critical issues from low-priority cleanup.
5. Recommend remediation and verification.
6. Note follow-up monitoring or contracts to add.

## Output

For non-trivial work, provide:
- dataset under review
- quality dimensions checked
- key anomalies and severity
- recommended remediation
- verification or monitoring suggestions

## Coordination

After data audit:
- use `data-migration-safety-review` if remediation needs schema or backfill changes
- use `systematic-debugging` if anomalies look code-driven
- use `docs-writer` if data contracts or runbooks need to be published

## Invocation Examples

- "Use data-quality-audit from dev-workflow-kit to assess freshness, completeness, and correctness of this dataset."
- "Use data-quality-audit to check whether this table has duplicate or orphaned rows before we expose it."
- "Use data-quality-audit because downstream reports look wrong but the code path seems fine."
