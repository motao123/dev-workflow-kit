---
name: environment-config-audit
description: Use when the main risk is environment parity, config drift, secrets wiring, flags, defaults, or deployment-time assumptions rather than code logic itself.
license: MIT
---

# Environment Config Audit

Use this skill when a change may fail because environments or configuration assumptions are inconsistent.

## Trigger Conditions

Use this skill when:
- staging, production, or local behavior may differ because of config
- env vars, secrets, feature flags, or defaults are part of the risk
- deployment-time assumptions are unclear
- the user wants to audit environment parity before release
- a config or secrets issue is more likely than a code bug

Do not use this skill for pure code debugging when configuration is clearly not involved.

## Workflow

1. Identify the relevant environments and config surfaces.
2. Map env vars, flags, defaults, secrets, and deployment assumptions.
3. Identify mismatches, missing pieces, or risky defaults.
4. Separate release-blocking config risk from lower-priority cleanup.
5. Recommend the smallest useful fixes or checks.
6. Call out what should be documented or reverified.

## Output

For non-trivial work, provide:
- environments reviewed
- config surfaces reviewed
- parity or drift risks
- release blockers vs lower-priority issues
- recommended next checks or fixes

## Coordination

After config audit:
- use `release-rollout-strategy` if rollout depends on flags or staged config
- use `ship-readiness` if config parity is the final blocker
- use `docs-writer` if setup or migration docs need to be updated

## Invocation Examples

- "Use environment-config-audit before release to compare local, staging, and prod assumptions."
- "Use environment-config-audit to check whether secrets, flags, and defaults are wired consistently."
- "Use environment-config-audit because this smells like config drift, not a code bug."
