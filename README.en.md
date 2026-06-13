# dev-workflow-kit

![CI](https://github.com/motao123/dev-workflow-kit/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Skills: 21](https://img.shields.io/badge/Skills-21-6f42c1.svg)
![Branch: main](https://img.shields.io/badge/Branch-main-2ea44f.svg)
![Evals Included](https://img.shields.io/badge/Evals-Included-orange.svg)
![Examples Included](https://img.shields.io/badge/Examples-Included-1f6feb.svg)

> 中文: [README.md](./README.md) · Homepage: <https://motao123.github.io/dev-workflow-kit/>

A **software delivery lifecycle skill collection** for Claude Code, Codex, and compatible agents.

It is not a "code-writing skills bundle" — it breaks the actual, recurring bottlenecks of software delivery into standalone skills: **planning, impact analysis, refactor guidance, debugging, CI, review handling, browser verification, security review, dependency audit, release strategy, pre-release checks, and documentation capture**.

- Covers **21 workflow skills** from requirements planning to production delivery
- Built for **actual delivery workflows** in Claude Code / Codex / compatible agents, not just code writing
- Every skill ships with a **README, eval samples, and prompt examples**

> The goal is simple: let AI agents not just write code, but carry delivery workflows more reliably to completion.

**Quick links:** [Quick Start](#quick-start) · [Skills](#skills) · [Recommended Workflows](#recommended-workflows) · [Invocation Examples](#invocation-examples) · [Contributing](#contributing)

## Table of Contents

- [Why this project exists](#why-this-project-exists)
- [What it covers](#what-it-covers)
- [Lifecycle skill map](#lifecycle-skill-map)
- [Skills](#skills)
- [Quick Start](#quick-start)
- [Recommended Workflows](#recommended-workflows)
- [Invocation Examples](#invocation-examples)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

---

## Why this project exists

In many repositories, coding is only the middle segment. The real slowdowns are often about everything around coding itself:

- Requirements haven't been sliced clearly — starting to code is premature rework
- Changing one point — no clarity on which modules and consumers are affected
- A refactor is needed — but it's unclear how to cut boundaries safely
- Bugs have many symptoms, but the root cause is unknown
- Local tests pass, but CI is still red
- Review comments pile up — no systematic way to classify and resolve them
- UI changed — but there's no browser-level evidence
- The change is high-risk — it needs a security or dependency perspective before merge
- The code is shippable — but how to rollout safely is an open question
- The feature is done — but docs and release notes haven't been written

`dev-workflow-kit` turns these "outside-of-coding but delivery-critical" bottlenecks into individually callable skills.

---

## What it covers

### 1. Clarify work before coding
- `planning`
- `test-strategy-gap-review`
- `change-impact-analysis`
- `architecture-refactor-guidance`

### 2. Pinpoint problems
- `systematic-debugging`
- `incident-observability-triage`
- `performance-investigation`
- `fix-ci`

### 3. Control risk before merge
- `review-address-comments`
- `browser-verification`
- `security-review`
- `dependency-compliance-audit`
- `api-contract-compatibility-review`
- `cost-impact-review`
- `data-quality-audit`

### 4. Ship and deliver safely
- `release-rollout-strategy`
- `environment-config-audit`
- `data-migration-safety-review`
- `release-incident-postmortem`
- `ship-readiness`
- `docs-writer`

---

## Lifecycle skill map

```text
Idea / Change Request
        |
        v
  planning
        |
        +--> test-strategy-gap-review
        +--> change-impact-analysis
        +--> architecture-refactor-guidance
        |
        v
Implementation / Active Coding Workflow
        |
        +--> systematic-debugging
        +--> incident-observability-triage
        +--> fix-ci
        +--> performance-investigation
        |
        v
Review / Verification
        +--> review-address-comments
        +--> browser-verification
        +--> security-review
        +--> dependency-compliance-audit
        +--> api-contract-compatibility-review
        +--> cost-impact-review
        +--> data-quality-audit
        |
        v
Release / Delivery
        +--> environment-config-audit
        +--> data-migration-safety-review
        +--> release-rollout-strategy
        +--> ship-readiness
        +--> release-incident-postmortem
        +--> docs-writer
```

---

## Skills

| Skill | Purpose | Typical output |
| --- | --- | --- |
| `planning` | Scope clarification, implementation order, acceptance criteria | Implementation plan, risks, verification strategy |
| `test-strategy-gap-review` | Assess whether current verification is sufficient | Missing coverage, blind spots, suggested additions |
| `change-impact-analysis` | Map blast radius of a change | Affected surfaces, regression zones, verification focus |
| `architecture-refactor-guidance` | Decide on structural boundaries and safe refactor sequencing | Boundary suggestions, staged refactor order, preservation strategy |
| `systematic-debugging` | Reproduce, narrow, and root-cause unclear failures | Reproduction status, hypotheses, root cause direction |
| `incident-observability-triage` | Triage incidents from alerts, logs, metrics, or traces | Impact scope, mitigation direction, next investigation steps |
| `fix-ci` | Handle failing CI / build / type / test automation | Earliest failure, classification, minimal repair path |
| `review-address-comments` | Process PR comments and requested changes | Comment groups, action list, resolution summary |
| `browser-verification` | Browser-level UI smoke testing | Golden-path observations, pass/fail evidence |
| `security-review` | Security-focused review of trust boundaries and abuse surfaces | Risk list, severity, remediation suggestions |
| `dependency-compliance-audit` | Third-party dependency, license, and supply-chain review | Risk categories, decision recommendations |
| `api-contract-compatibility-review` | API / schema / event contract compatibility assessment | Breaking changes, compatibility risks, migration guidance |
| `release-rollout-strategy` | Rollout design, canary/phased/flag-gated planning | Rollout plan, checkpoints, rollback conditions |
| `performance-investigation` | Narrow performance bottlenecks before optimizing | Bottleneck type, hotspots, next measurement direction |
| `environment-config-audit` | Audit environment parity and config drift | Parity risks, config blockers, suggested checks |
| `data-migration-safety-review` | Safety review for data migrations and backfills | Migration risks, rollback limits, verification checkpoints |
| `release-incident-postmortem` | Structured retrospective after incident mitigation | Timeline, impact, root cause, follow-up actions |
| `cost-impact-review` | Assess whether a change materially raises infra / per-request cost | Cost drivers, risk hotspots, optimization suggestions |
| `data-quality-audit` | Review runtime data correctness, freshness, completeness, integrity | Data anomalies, severity, remediation and monitoring suggestions |
| `ship-readiness` | Final merge / release readiness gate | Blocker list, done/missing, risk summary |
| `docs-writer` | Produce README, migration notes, release notes, usage examples | Documentation draft, outline, gap suggestions |

---

## Quick Start

### Install
Place the directory into your skills folder:

```text
~/.codex/skills/dev-workflow-kit
```

### How to choose a skill
Pick by **current bottleneck**, not the final goal:

- Stuck on "what should we build?" → `planning`
- Stuck on "is the test coverage enough?" → `test-strategy-gap-review`
- Stuck on "what does this change affect?" → `change-impact-analysis`
- Stuck on "why is this failing?" → `systematic-debugging`
- Stuck on "CI is red" → `fix-ci`
- Stuck on "why did performance regress?" → `performance-investigation`
- Stuck on "are staging and prod aligned?" → `environment-config-audit`
- Stuck on "is this data migration safe?" → `data-migration-safety-review`
- Stuck on "incident is mitigated but need a postmortem" → `release-incident-postmortem`
- Stuck on "will this change spike our bill?" → `cost-impact-review`
- Stuck on "can I trust this dataset?" → `data-quality-audit`
- Stuck on "can we ship?" → `ship-readiness`

### First call
Start with the most concrete question, for example:

```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

or:

```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

> The repo structure convention is simple: the root contains `SKILL.md`, `README.md`, `evals/`, `references/`, and each skill subdirectory contains `SKILL.md`, `README.md`, `evals/evals.json`, `references/examples.md`.

---

## Recommended Workflows

### Feature development
```text
planning -> test-strategy-gap-review -> change-impact-analysis -> active coding workflow -> review-address-comments -> browser-verification -> ship-readiness -> docs-writer
```

### Complex refactor
```text
planning -> architecture-refactor-guidance -> change-impact-analysis -> test-strategy-gap-review -> active coding workflow -> api-contract-compatibility-review -> ship-readiness
```

### Production incident
```text
incident-observability-triage -> performance-investigation / systematic-debugging -> active coding workflow -> release-rollout-strategy -> ship-readiness -> release-incident-postmortem
```

### Pre-release
```text
environment-config-audit -> data-migration-safety-review -> data-quality-audit -> dependency-compliance-audit -> cost-impact-review -> security-review -> release-rollout-strategy -> ship-readiness -> docs-writer
```

---

## Invocation Examples

### Plan a task
```text
用 dev-workflow-kit 的 planning 先把这个需求拆成实现步骤、风险和验证方案。
```

### Check test coverage gaps
```text
用 dev-workflow-kit 的 test-strategy-gap-review 看一下这次改动最缺哪类测试覆盖。
```

### Map blast radius
```text
用 dev-workflow-kit 的 change-impact-analysis 看一下这次改动会影响哪些模块、接口和验证面。
```

### Debug a complex bug
```text
用 dev-workflow-kit 的 systematic-debugging，先复现并缩小范围，再决定怎么修。
```

### Fix CI
```text
用 dev-workflow-kit 的 fix-ci，看最早失败日志，给我最小修复路径。
```

### Review API contract compatibility
```text
用 dev-workflow-kit 的 api-contract-compatibility-review，检查这次接口改动会不会破坏老客户端。
```

### Investigate a performance regression
```text
用 dev-workflow-kit 的 performance-investigation 先判断这次延迟回归最可能卡在哪一层。
```

### Audit environment config
```text
用 dev-workflow-kit 的 environment-config-audit 在发版前检查 local、staging、prod 的配置假设是否一致。
```

### Review data migration safety
```text
用 dev-workflow-kit 的 data-migration-safety-review 在上线前审查这个 schema backfill 是否安全。
```

### Design a rollout
```text
用 dev-workflow-kit 的 release-rollout-strategy，给这个功能设计一个带监控和回滚条件的上线方案。
```

### Write a postmortem
```text
用 dev-workflow-kit 的 release-incident-postmortem，把这次事故复盘成 timeline、影响、根因和后续改进项。
```

### Assess cost impact
```text
用 dev-workflow-kit 的 cost-impact-review，评估这次改动会不会让 infra 或单请求成本明显上涨。
```

### Audit data quality
```text
用 dev-workflow-kit 的 data-quality-audit，看这个表的新鲜度、完整性和重复行情况。
```

---

## Roadmap

Full version history in [`CHANGELOG.md`](./CHANGELOG.md).

### Current highlights
- Standalone: no external skill naming dependency
- 21 skills covering key delivery lifecycle stages
- v3 added:
  - `change-impact-analysis`
  - `release-rollout-strategy`
  - `api-contract-compatibility-review`
- v4 added:
  - `test-strategy-gap-review`
  - `performance-investigation`
  - `environment-config-audit`
- v5 added:
  - `data-migration-safety-review`
- v6 added:
  - `release-incident-postmortem`
  - `cost-impact-review`
  - `data-quality-audit`

### Completed
- v1: base lifecycle skill set
- v2: refactor / incident / dependency expansion
- v3: impact / rollout / contract expansion
- v4: test strategy / performance / environment config expansion
- v5: data migration safety expansion
- v6: incident postmortem / cost / data quality expansion
- Standalone: removed external skill naming dependencies

### Future
- Richer eval samples
- More screenshots / GIFs / session recordings

---

## Contributing

If you want to add a skill to this repo, start by reading [`CONTRIBUTING.md`](./CONTRIBUTING.md).

The core conventions are:

1. One directory per skill
2. Each directory must contain:
   - `SKILL.md`
   - `README.md`
   - `evals/evals.json`
   - `references/examples.md`
3. Use lowercase kebab-case for names
4. Root `SKILL.md`, `README.md`, `references/skill-catalog.md` must be synced
5. Every new skill must clearly document:
   - When to use it
   - When NOT to use it
   - Workflow
   - Output
   - Coordination
   - Invocation examples

For formal contributions, treat [`CONTRIBUTING.md`](./CONTRIBUTING.md) as the canonical rule source.

---

## License

MIT
