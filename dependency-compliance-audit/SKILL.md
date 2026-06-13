---
name: dependency-compliance-audit
description: Use when the main question is whether a third-party dependency is acceptable to adopt, upgrade, keep, or ship. This skill focuses on package risk, license or policy fit, supply-chain awareness, and recommended next actions.
license: MIT
---

# Dependency Compliance Audit

Use this skill when package choice or package governance is the main blocker.

## Trigger Conditions

Use this skill when:
- the user asks whether a new dependency is safe or acceptable to adopt
- license, policy, provenance, or supply-chain concerns are in scope
- a stale, risky, or vulnerable package needs to be evaluated
- package upgrade pressure is affecting release confidence
- the team needs a dependency-focused review before merge or release

Do not use this skill for general code security review, product design, or final release signoff across the whole change.

## Workflow

1. Identify the dependency or dependency set under review.
2. Clarify whether the concern is security, license, policy, maintenance, provenance, or upgrade compatibility.
3. Separate direct dependency concerns from broader code-path concerns.
4. Classify risk and likely decision options.
5. Recommend the smallest next action with the best tradeoff.
6. Suggest any follow-up review or documentation needed.

## Output

For non-trivial work, provide:
- dependency scope reviewed
- main risk categories
- likely policy or release concerns
- recommended decision path
- follow-up verification or documentation

## Coordination

After audit:
- use `security-review` if dependency concerns expand into runtime trust-boundary issues
- use `docs-writer` if policy or migration notes should be recorded
- use `ship-readiness` if package choice remains a release blocker

## Invocation Examples

- "Use dependency-compliance-audit to review whether this new package is safe to adopt."
- "Use dependency-compliance-audit because the main concern is license and supply-chain fit."
- "Use dependency-compliance-audit to assess whether this outdated package is still acceptable for release."
