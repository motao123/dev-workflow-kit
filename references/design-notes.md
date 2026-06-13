# Design Notes

`dev-workflow-kit` is a standalone development workflow kit for markdown-first skill packs.

## Why this pack exists

Most software delivery work is larger than implementation alone. Teams repeatedly need help with:

- planning and goal definition
- systematic debugging
- CI repair and pipeline triage
- review comment resolution
- browser or E2E verification
- security-focused review
- release readiness
- documentation capture

## Selection logic

The initial skill set was chosen to cover the most common delivery bottlenecks without turning the project into an implementation-specific framework:

1. `planning` handles uncertainty before coding.
2. `systematic-debugging` handles unclear failures during coding.
3. `fix-ci` handles automation mismatch after coding.
4. `review-address-comments` handles collaboration after review.
5. `browser-verification` handles visual or interaction evidence.
6. `security-review` handles trust-boundary and abuse-case analysis.
7. `ship-readiness` handles merge/release gates.
8. `docs-writer` handles outward-facing knowledge capture.

## V2 expansion rationale

The v2 expansion focused on two improvements before adding broader coverage:

1. The top-level router needed stricter dispatch guidance so overlapping requests were easier to route consistently.
2. The next skills needed to fill the most obvious lifecycle gaps without duplicating existing workflow coverage.

The 3 added v2 skills are:

1. `architecture-refactor-guidance` for structural-change and safe-refactor decisions.
2. `incident-observability-triage` for alert-, log-, metric-, and impact-driven investigation.
3. `dependency-compliance-audit` for third-party dependency, license, and supply-chain concerns.

These were chosen before adding even more breadth because they extend the pack into high-value real-world bottlenecks that are not already first-class in v1.

## V3 expansion rationale

The v3 expansion focuses on strengthening the pack as a standalone delivery workflow kit.

The 3 added v3 skills are:

1. `change-impact-analysis` for mapping blast radius before implementation or release.
2. `release-rollout-strategy` for phased release design, checkpoint planning, and rollback-aware delivery.
3. `api-contract-compatibility-review` for protecting clients and downstream systems from breaking interface changes.

These were chosen because they extend the pack into three common standalone workflow gaps:

- understanding what a change touches
- deciding how a release should be rolled out
- protecting compatibility at integration boundaries

## Packaging choice

This pack uses a lightweight local structure:

- one project directory
- markdown-first skill definitions
- one `SKILL.md` per skill
- optional `README.md`, `evals`, and `references`

That keeps the pack easy to copy, inspect, and evolve without introducing build tooling.
