<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://img.shields.io/badge/dev--workflow--kit-21_skills-6366f1?style=for-the-badge&logo=github&logoColor=white&labelColor=111111">
    <img alt="dev-workflow-kit" src="https://img.shields.io/badge/dev--workflow--kit-21_skills-4f46e5?style=for-the-badge&logo=github&logoColor=white&labelColor=fafafa">
  </picture>
</p>

<p align="center">
  <a href="https://github.com/motao123/dev-workflow-kit/actions/workflows/ci.yml"><img src="https://github.com/motao123/dev-workflow-kit/actions/workflows/ci.yml/badge.svg" alt="CI" /></a>
  <a href="./LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" /></a>
  <a href="#skills"><img src="https://img.shields.io/badge/Skills-21-6f42c1.svg" alt="Skills: 21" /></a>
  <img src="https://img.shields.io/badge/Branch-main-2ea44f.svg" alt="Branch: main" />
  <img src="https://img.shields.io/badge/Evals-Included-orange.svg" alt="Evals Included" />
  <img src="https://img.shields.io/badge/Examples-Included-1f6feb.svg" alt="Examples Included" />
</p>

<p align="center">
  <strong>Software delivery lifecycle skill collection for Claude Code, Codex, and compatible agents.</strong><br />
  21 standalone workflow skills covering the full path from requirements planning to production delivery.
</p>

<p align="center">
  <a href="./README.md">中文</a> ·
  <a href="https://motao123.github.io/dev-workflow-kit/">Homepage</a> ·
  <a href="#quick-start">Quick Start</a> ·
  <a href="#skills">Skills</a> ·
  <a href="./CHANGELOG.md">Changelog</a> ·
  <a href="./CONTRIBUTING.md">Contributing</a>
</p>

---

## Table of Contents

- [Why this exists](#why-this-exists)
- [What it covers](#what-it-covers)
- [Skills](#skills)
- [Quick Start](#quick-start)
- [Recommended Workflows](#recommended-workflows)
- [Invocation Examples](#invocation-examples)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

---

## Why this exists

In real development work, coding is only one segment of the delivery chain. The recurring bottlenecks are almost always around coding itself:

- Requirements haven't been sliced — starting to code leads to rework
- Changing one thing with no clarity on which modules, interfaces, or consumers are affected
- A refactor is needed but boundaries and staging order are unclear
- Bugs have many symptoms but no clear root cause
- Local tests pass, CI stays red, and logs are noisy
- Review comments pile up without a systematic way to classify and resolve them
- UI changed without browser-level evidence — shipping on "it should be fine"
- High-risk changes need a supplementary security or dependency review
- Code is shippable but the rollout strategy hasn't been designed
- The feature is done but docs and release notes are missing

`dev-workflow-kit` maps these problems to **individually callable skills**, each with clear usage boundaries, expected output, and handoff paths.

---

## What it covers

### 1. Before coding: clarify first
- `planning`
- `test-strategy-gap-review`
- `change-impact-analysis`
- `architecture-refactor-guidance`

### 2. When stuck: pinpoint the problem
- `systematic-debugging`
- `incident-observability-triage`
- `performance-investigation`
- `fix-ci`

### 3. Before merge: make changes controllable
- `review-address-comments`
- `browser-verification`
- `security-review`
- `dependency-compliance-audit`
- `api-contract-compatibility-review`
- `cost-impact-review`
- `data-quality-audit`

### 4. At release: make delivery safer
- `release-rollout-strategy`
- `environment-config-audit`
- `data-migration-safety-review`
- `release-incident-postmortem`
- `ship-readiness`
- `docs-writer`

---

## Skills

| Skill | Purpose | Typical output |
| --- | --- | --- |
| `planning` | Scope clarification, implementation order, acceptance criteria | Implementation plan, risks and dependencies, verification strategy |
| `test-strategy-gap-review` | Assess whether current verification is sufficient | Coverage blind spots, high-value test additions |
| `change-impact-analysis` | Map blast radius and downstream effects of a change | Affected modules/consumers, regression zones, verification focus |
| `architecture-refactor-guidance` | Choose safe boundaries and refactor sequencing | Boundary suggestions, staged refactor plan, preservation strategy |
| `systematic-debugging` | Reproduce, narrow, and root-cause unclear failures | Reproduction status, narrowed scope, root cause assessment |
| `incident-observability-triage` | Triage live incidents from alerts, logs, metrics, traces | Impact scope, mitigation direction, next investigation steps |
| `performance-investigation` | Narrow performance bottlenecks before optimizing | Bottleneck type, hotspots, measurement or mitigation direction |
| `fix-ci` | Locate the earliest pipeline failure and classify it | Failure classification, minimal repair path |
| `review-address-comments` | Systematically classify and resolve PR review comments | Comment groups, resolution plan, summary |
| `browser-verification` | Browser-level UI smoke testing with observable evidence | Golden-path observations, pass/fail evidence |
| `security-review` | Identify trust-boundary, abuse-case, and unsafe-default risks | Risk list with severity, remediation suggestions |
| `dependency-compliance-audit` | Review third-party package risk, license, and supply-chain fit | Risk categories, compliance recommendations |
| `api-contract-compatibility-review` | Check breaking changes, versioning, and migration guidance | Breaking changes, compatibility risks, migration guidance |
| `release-rollout-strategy` | Design phased, canary, flag-gated rollout with checkpoints and rollback | Rollout plan, checkpoints, rollback conditions |
| `environment-config-audit` | Audit environment parity and config drift | Parity risks, config blockers |
| `data-migration-safety-review` | Safety review for schema migrations and backfills | Migration risks, rollback limits, verification checkpoints |
| `release-incident-postmortem` | Structured retrospective after incident mitigation | Timeline, impact, root cause, follow-up actions |
| `cost-impact-review` | Assess whether a change materially raises infra or per-request cost | Cost drivers, risk hotspots, optimization suggestions |
| `data-quality-audit` | Audit runtime data correctness, freshness, completeness, integrity | Anomaly list, severity, remediation and monitoring suggestions |
| `ship-readiness` | Final merge/release readiness check | Blocker list, risk summary |
| `docs-writer` | Produce README, migration notes, release notes from real code | Documentation draft, gap analysis |

---

## Quick Start

### Install

```bash
git clone https://github.com/motao123/dev-workflow-kit ~/.codex/skills/dev-workflow-kit
```

### Choose a skill

Pick by **current bottleneck**, not the final goal:

| Stuck on | Use |
| --- | --- |
| Scope is unclear | `planning` |
| What does this change touch? | `change-impact-analysis` |
| Why is this failing? | `systematic-debugging` |
| CI is red | `fix-ci` |
| Can we ship? | `ship-readiness` |

### First call

```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

---

## Recommended Workflows

**Feature development**
```
planning → test-strategy-gap-review → change-impact-analysis → review-address-comments → browser-verification → ship-readiness → docs-writer
```

**Complex refactor**
```
planning → architecture-refactor-guidance → change-impact-analysis → test-strategy-gap-review → api-contract-compatibility-review → ship-readiness
```

**Production incident**
```
incident-observability-triage → performance-investigation / systematic-debugging → release-rollout-strategy → ship-readiness → release-incident-postmortem
```

**Pre-release**
```
environment-config-audit → data-migration-safety-review → data-quality-audit → dependency-compliance-audit → cost-impact-review → security-review → release-rollout-strategy → ship-readiness → docs-writer
```

---

## Invocation Examples

<details>
<summary>Expand common invocation examples</summary>

```text
# Plan
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。

# Impact analysis
用 dev-workflow-kit 的 change-impact-analysis 看一下这次改动会影响哪些模块、接口和验证面。

# Debug
用 dev-workflow-kit 的 systematic-debugging，先复现并缩小范围，再决定怎么修。

# CI
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。

# API compatibility
用 dev-workflow-kit 的 api-contract-compatibility-review，检查这次接口改动会不会破坏老客户端。

# Performance
用 dev-workflow-kit 的 performance-investigation 先判断这次延迟回归最可能卡在哪一层。

# Environment config
用 dev-workflow-kit 的 environment-config-audit 在发版前检查 local、staging、prod 的配置假设是否一致。

# Cost
用 dev-workflow-kit 的 cost-impact-review，评估这次改动会不会让 infra 或单请求成本明显上涨。

# Rollout strategy
用 dev-workflow-kit 的 release-rollout-strategy，给这个功能设计一个带监控和回滚条件的上线方案。

# Postmortem
用 dev-workflow-kit 的 release-incident-postmortem，把这次事故复盘成 timeline、影响、根因和后续改进项。
```

</details>

---

## Roadmap

Full version history in [`CHANGELOG.md`](./CHANGELOG.md).

| Version | Content |
| --- | --- |
| v1 | Base lifecycle skill set (8 skills) |
| v2 | Refactor / incident / dependency expansion (+3) |
| v3 | Impact / rollout / contract expansion (+3) |
| v4 | Test strategy / performance / env config expansion (+3) |
| v5 | Data migration safety (+1) |
| v6 | Incident postmortem / cost / data quality (+3) |

Future: richer eval samples, session recordings and screenshots.

---

## Contributing

To add or adjust a skill, start by reading [`CONTRIBUTING.md`](./CONTRIBUTING.md).

Core conventions:

1. One directory per skill (lowercase kebab-case)
2. Each skill must contain `SKILL.md`, `README.md`, `evals/evals.json`, `references/examples.md`
3. When adding or changing a skill, sync the root `SKILL.md`, `README.md`, and `references/skill-catalog.md`
4. Every skill must document: when to use, when not to use, workflow, output, coordination, and invocation examples

---

## License

MIT © 2026 陌涛
