---
name: planning
description: Use when a task needs scope clarification, acceptance criteria, implementation slicing, dependency mapping, or a verification plan before coding begins. This skill turns fuzzy requests into concrete execution plans.
license: MIT
---

# Planning

Use this skill before implementation when the task is unclear, large, risky, or cross-cutting.

## Trigger Conditions

Use this skill when:
- the user asks how to approach a task
- requirements are incomplete or ambiguous
- the task spans multiple files, packages, or layers
- the team needs acceptance criteria before coding
- implementation order, risk, or dependencies are unclear

Do not use this skill for obvious one-line fixes or pure explanation-only questions.

## Workflow

1. Read the relevant code, docs, and local instructions first.
2. Clarify the desired outcome and constraints.
3. Break the work into the smallest meaningful slices.
4. Identify risks, dependencies, and unclear assumptions.
5. Define a concrete verification approach.
6. Recommend the execution order.

## Output

For non-trivial work, provide:
- goal summary
- scope boundaries
- step-by-step plan
- risks and dependencies
- verification plan
- recommended next skill if relevant

## Coordination

After planning:
- continue in the active implementation workflow
- use `systematic-debugging` if execution stalls on unclear failures
- use `ship-readiness` before merge or release

## Invocation Examples

- "Use planning to break this feature into implementation slices and acceptance criteria."
- "Use planning before we touch this multi-package refactor."
- "Use planning to define the safest order for this migration and its verification."
