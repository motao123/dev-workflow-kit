---
name: incident-observability-triage
description: Use when a problem is driven by alerts, logs, metrics, traces, dashboards, or visible production impact. This skill focuses on blast radius, mitigation direction, and telemetry-first investigation before jumping into implementation.
license: MIT
---

# Incident Observability Triage

Use this skill when the failure is operationally visible and needs triage before code changes.

## Trigger Conditions

Use this skill when:
- an alert is firing
- users are impacted in production or a shared environment
- logs, metrics, traces, or dashboards are the main evidence source
- the first priority is blast-radius assessment or mitigation
- the team needs to decide whether to stabilize first or diagnose deeper first

Do not use this skill for local-only bugs, obvious unit-test failures, or pure CI pipeline issues.

## Workflow

1. Capture the incoming signal: alert, user impact, dashboard, log spike, or trace anomaly.
2. Estimate blast radius, severity, and affected surfaces.
3. Correlate logs, metrics, traces, and recent changes where available.
4. Separate immediate mitigation from deeper root-cause work.
5. Recommend the next safest action order.
6. Hand off to the right follow-up skill.

## Output

For non-trivial work, provide:
- incident signal summary
- impact and blast radius
- likely failure surface
- mitigation direction
- deeper investigation path
- recommended next handoff

## Coordination

After triage:
- use `systematic-debugging` for deeper root-cause analysis
- use `security-review` if the incident suggests abuse, exposure, or broken permissions
- use `trellis-lightweight-tdd` if the next step is a code fix

## Invocation Examples

- "Use incident-observability-triage to triage this production alert from logs and metrics."
- "Use incident-observability-triage and tell me the likely blast radius before we patch anything."
- "Use incident-observability-triage to decide whether we mitigate first or keep diagnosing."
