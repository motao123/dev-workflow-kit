---
name: performance-investigation
description: Use when the main problem is latency, throughput, memory, resource usage, render slowness, or another performance bottleneck that needs investigation and prioritization.
license: MIT
---

# Performance Investigation

Use this skill when slowness or resource pressure is the core issue.

## Trigger Conditions

Use this skill when:
- latency or throughput regressed
- a page, endpoint, query, or job is slower than expected
- CPU, memory, or resource usage is driving the problem
- the user wants to know where the performance bottleneck likely is
- performance confidence is blocking release or scaling decisions

Do not use this skill for generic logic bugs that do not involve performance symptoms.

## Workflow

1. Identify the performance symptom and the affected surface.
2. Clarify whether the problem is latency, throughput, memory, CPU, rendering, or another resource bottleneck.
3. Narrow the likely hotspots and measurement points.
4. Separate likely root bottlenecks from downstream symptoms.
5. Recommend the best next investigation or mitigation step.
6. Call out what evidence would most improve confidence.

## Output

For non-trivial work, provide:
- performance symptom summary
- likely bottleneck class
- likely hotspots
- next measurements or checks
- mitigation direction
- recommended next step

## Coordination

After performance investigation:
- use `incident-observability-triage` if the issue is live and user-facing
- use `systematic-debugging` if the performance symptom turns out to be a broader logic issue
- move into the active implementation workflow if optimization work is next

## Invocation Examples

- "Use performance-investigation to figure out why this endpoint got slower after the last change."
- "Use performance-investigation to narrow the likely bottleneck before we start optimizing."
- "Use performance-investigation because release confidence is blocked by latency regression."
