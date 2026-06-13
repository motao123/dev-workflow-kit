# Changelog

All notable changes to `dev-workflow-kit` are documented here.

This project follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and [Semantic Versioning](https://semver.org/).

## [Unreleased]

### Added — v6: Postmortem / cost / data quality
- `release-incident-postmortem`
- `cost-impact-review`
- `data-quality-audit`

### Changed
- Skill count bumped to 21 across README badge, hero bullet, and roadmap.
- Root router (`SKILL.md`) extended with 3 new sections, tie-breakers, handoff rules, coordination patterns, and invocation examples.
- `references/skill-catalog.md` and `references/design-notes.md` updated with v6 rationale.
- Root `evals/evals.json` extended with 3 v6 trigger prompts.

## [1.0.0] - 2026-06-13

First public release.

This release brings together the v1–v5 skill batches, the standalone repositioning, and the public open-source repo polish into a single tagged version.

### Added — v1: Base lifecycle skill set
- `planning`
- `systematic-debugging`
- `fix-ci`
- `review-address-comments`
- `browser-verification`
- `security-review`
- `ship-readiness`
- `docs-writer`

### Added — v2: Refactor / incident / dependency
- `architecture-refactor-guidance`
- `incident-observability-triage`
- `dependency-compliance-audit`

### Added — v3: Impact / rollout / contract
- `change-impact-analysis`
- `release-rollout-strategy`
- `api-contract-compatibility-review`

### Added — v4: Test strategy / performance / environment config
- `test-strategy-gap-review`
- `performance-investigation`
- `environment-config-audit`

### Added — v5: Data migration safety
- `data-migration-safety-review`

### Notes — Standalone milestone
- Removed external skill naming dependencies so `dev-workflow-kit` stands as its own workflow kit.
- Reframed router, README, and design notes around an independent delivery lifecycle.

### Repo — Open-source readiness
- README homepage upgrade with badges, quick links, TOC, lifecycle map, skills table, quick start, recommended workflows, examples, and roadmap.
- Community files: `CONTRIBUTING.md`, `SECURITY.md`, `CODE_OF_CONDUCT.md`, `SUPPORT.md`.
- `.github/` issue forms (`skill-proposal`, `bug-report`, `docs-improvement`), `config.yml`, and `pull_request_template.md`.
- License completed with copyright holder.
- Root evals cover all 18 skills.

[Unreleased]: https://github.com/motao123/dev-workflow-kit/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/motao123/dev-workflow-kit/releases/tag/v1.0.0
