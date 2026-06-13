---
name: release-incident-postmortem
description: Use when an incident has already been mitigated and the team needs a structured post-incident retrospective with timeline, impact, root cause, contributing factors, and follow-up actions.
license: MIT
---

# Release Incident Postmortem

Use this skill when the incident is over and the focus is structured learning, not live triage.

## Trigger Conditions

Use this skill when:
- an outage, regression, or release incident has already been mitigated
- the team needs a postmortem document with timeline and root-cause analysis
- follow-up actions, owners, and prevention work need to be captured
- a release-related incident requires a learning record beyond a chat summary

Do not use this skill while an incident is still active or when root cause is still unknown.

## Workflow

1. Confirm the incident is mitigated and stable.
2. Reconstruct the timeline using available evidence.
3. Summarize user-visible impact and scope.
4. Identify root cause and contributing factors.
5. Capture mitigation steps actually taken.
6. Define concrete follow-up actions, owners, and verification.

## Output

For non-trivial work, provide:
- timeline summary
- impact and scope
- root cause and contributing factors
- mitigation actions taken
- follow-up actions with owners
- recommended preventive changes

## Coordination

After postmortem drafting:
- use `docs-writer` to publish the postmortem and any external comms
- use `release-rollout-strategy` if rollout shape needs to change for prevention
- use `systematic-debugging` only if root cause turns out to still be unclear

## Invocation Examples

- "Use release-incident-postmortem from dev-workflow-kit to run a structured postmortem on this outage."
- "Use release-incident-postmortem to capture timeline, impact, and follow-up actions for last night's incident."
- "Use release-incident-postmortem to write the retrospective doc now that mitigation is complete."
