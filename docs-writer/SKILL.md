---
name: docs-writer
description: Use when completed or in-progress work needs documentation such as README updates, migration notes, release notes, usage examples, or developer-facing operational guidance. This skill writes docs grounded in the current code and verified behavior.
license: MIT
---

# Docs Writer

Use this skill when project knowledge needs to be turned into durable documentation.

## Trigger Conditions

Use this skill when:
- README or setup docs need updates
- a change requires migration notes or release notes
- usage examples must be added
- implementation behavior should be documented for other developers
- the user asks for docs tied to real code changes

Do not use this skill to invent architecture or behavior that is not supported by the current code.

## Workflow

1. Read the relevant code and existing docs first.
2. Identify the audience and purpose.
3. Capture only the behavior that is real and current.
4. Write the smallest docs that close the knowledge gap.
5. Preserve examples and step ordering where they help.
6. Note any missing verification if docs depend on untested behavior.

## Output

For non-trivial work, provide:
- target audience
- docs updated or drafted
- source of truth consulted
- open gaps or assumptions

## Coordination

Before documentation:
- use `trellis-lightweight-tdd` if the implementation is still changing
- use `ship-readiness` if docs are part of release completion
- use `security-review` if the docs touch sensitive operational guidance

## Invocation Examples

- "Use docs-writer to update the README for this new setup flow."
- "Use docs-writer to draft migration notes for this breaking change."
- "Use docs-writer to create a short release note and usage example."
