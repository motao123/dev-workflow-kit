# Design Notes

`dev-workflow-kit` exists to complement `trellis-lightweight-tdd`, not replace it.

## Why this pack exists

The existing `trellis-lightweight-tdd` project already does the core implementation job well:

- choose the right workflow weight
- support Trellis-aware execution
- support strict TDD when requested
- require verification evidence before completion

What it does not fully cover is the wider engineering lifecycle around coding. Public skill ecosystems repeatedly emphasize these adjacent stages:

- planning and goal definition
- systematic debugging
- CI repair and pipeline triage
- review comment resolution
- browser or E2E verification
- security-focused review
- release readiness
- documentation capture

## Selection logic

The 8 included skills were chosen because they add maximum coverage without duplicating `trellis-lightweight-tdd`:

1. `planning` handles uncertainty before coding.
2. `systematic-debugging` handles unclear failures during coding.
3. `fix-ci` handles automation mismatch after coding.
4. `review-address-comments` handles collaboration after review.
5. `browser-verification` handles visual or interaction evidence.
6. `security-review` handles trust-boundary and abuse-case analysis.
7. `ship-readiness` handles merge/release gates.
8. `docs-writer` handles outward-facing knowledge capture.

## V2 expansion rationale

The v2 expansion focuses on two improvements before adding broader coverage:

1. The top-level router now needs stricter dispatch guidance so overlapping requests are easier to route consistently.
2. The next skills should fill the most obvious lifecycle gaps without duplicating the existing pack.

The 3 added v2 skills are:

1. `architecture-refactor-guidance` for structural-change and safe-refactor decisions.
2. `incident-observability-triage` for alert-, log-, metric-, and impact-driven investigation.
3. `dependency-compliance-audit` for third-party dependency, license, and supply-chain concerns.

These were chosen before adding even more breadth because they extend the pack into high-value real-world bottlenecks that are not already first-class in v1.

## Packaging choice

This pack follows the same lightweight local structure as `trellis-lightweight-tdd`:

- one project directory
- markdown-first skill definitions
- one `SKILL.md` per skill
- optional `README.md`, `evals`, and `references`

That keeps the pack easy to copy, inspect, and evolve without introducing build tooling.
