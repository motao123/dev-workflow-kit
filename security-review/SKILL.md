---
name: security-review
description: Use when a change affects trust boundaries such as authentication, authorization, untrusted input, secrets, or sensitive data handling. This skill identifies security risks, abuse cases, and verification steps without replacing implementation review.
license: MIT
---

# Security Review

Use this skill when a change could introduce or expose security-sensitive behavior.

## Trigger Conditions

Use this skill when:
- auth or permission logic changes
- user-controlled input reaches storage, commands, templates, or queries
- secrets, tokens, uploads, redirects, or external callbacks are involved
- the user asks for a security pass before merge
- a feature creates new trust boundaries or expands existing ones

Do not use this skill as a generic code-quality pass when no security surface is involved.

## Workflow

1. Identify assets, trust boundaries, and user-controlled inputs.
2. Map the relevant attack surfaces.
3. Check for common failure modes such as injection, exposure, broken access control, and unsafe defaults.
4. Rate the likely severity and exploitability.
5. Recommend the smallest effective mitigations.
6. Suggest verification for the mitigations.

## Output

For non-trivial work, provide:
- surfaces reviewed
- risks found
- severity or priority
- mitigations
- verification suggestions
- remaining unknowns

## Coordination

After review:
- use `trellis-lightweight-tdd` for code changes
- use `ship-readiness` when security findings affect release decisions
- use `docs-writer` if operational guidance or migration notes are needed

## Invocation Examples

- "Use security-review on this auth change before we merge it."
- "Use security-review for this file-upload flow and list the main risks."
- "Use security-review to check this endpoint for trust-boundary mistakes."
