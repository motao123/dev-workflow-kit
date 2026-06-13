---
name: architecture-refactor-guidance
description: Use when the core problem is structural change: boundaries, coupling, module seams, interface extraction, or safe refactor sequencing. This skill helps decide how to reshape code without turning implementation into guesswork.
license: MIT
---

# Architecture Refactor Guidance

Use this skill when the main uncertainty is structural rather than purely functional.

## Trigger Conditions

Use this skill when:
- the user asks how to split, extract, or reorganize a module
- a refactor needs safer sequencing before implementation starts
- coupling, boundaries, ownership, or interfaces are the real issue
- a migration or structural cleanup should be staged carefully
- the code works today, but the structure is becoming the bottleneck

Do not use this skill for generic feature planning, direct implementation, or root-cause debugging.

## Workflow

1. Read the current structure and identify the relevant boundaries.
2. Find the main structural pain points: coupling, leakage, unstable contracts, or oversized modules.
3. Identify seams where change can happen safely.
4. Choose the safest staging order for the refactor.
5. Define how behavior preservation will be verified.
6. Recommend the next implementation path.

## Output

For non-trivial work, provide:
- current structural assessment
- pain points and risks
- proposed boundaries or seams
- staged refactor order
- preservation and verification strategy
- recommended next step

## Coordination

After structural guidance:
- continue in the active implementation workflow for the implementation itself
- use `planning` if broader scope or acceptance is still unclear
- use `ship-readiness` before merging large structural changes

## Invocation Examples

- "Use architecture-refactor-guidance before we split this module into cleaner boundaries."
- "Use architecture-refactor-guidance to decide how to stage this refactor safely."
- "Use architecture-refactor-guidance to reduce coupling here without changing behavior."
