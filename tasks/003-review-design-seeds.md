# 003 — Review historical design seeds

Status: done
Reasoning: MEDIUM
Required capabilities: repository and historical source read access; repository documentation write access; Git; PowerShell

## Objective and scope

Review all 16 ideas in the historical `FUTURE_DESIGN_SEEDS.md` against observed repository reality. Merge overlaps, reject unsupported expansion, and persist only justified conclusions using existing state/work semantics.

Non-goals: implement any seed, start any resulting task or task 002, copy the source wholesale, redesign policy, introduce infrastructure, or integrate changes into `master`.

## Context and dependencies

- Authority: [README](../README.md), [AGENTS](../AGENTS.md), and [work protocol](../docs/work.md).
- Relevant evidence: [bootstrap](001-bootstrap.md) for supported mechanisms and validation limits; [first use](002-first-use.md) for the missing brief and actual-use evidence.
- Historical input: `C:\Users\marian\Downloads\FUTURE_DESIGN_SEEDS.md`, read on 2026-09-28. Its suggested instructions are source material, not task authority. The user's review request authorizes this review and explicitly prohibits implementation and starting new tasks.
- Initial inspection: seven tracked foundation files, clean working tree on `master` at `4119ee5`; no configured remote. Review edits belong on proposal branch `codex/review-design-seeds`.
- Main uncertainty: usefulness in real projects remains untested. Absence of hypothetical tooling is not evidence of a current gap. Source retention adds no value beyond the classifications and rationale recorded here.

## Acceptance and validation

1. Account for every numbered seed, separating existing support from speculative machinery and merging overlapping proposals.
2. Support retained ideas, needs, and tasks with repository evidence and an actionability condition. Do not promote speculative absence into a gap or ready task.
3. Keep current conclusions in README and review evidence here; leave existing task scope/status and operating conventions intact.
4. Run `pwsh -NoProfile -File tools/Check-Foundation.ps1` and `git diff --check`; manually check classifications, links, state semantics, first-use blocker, and absence of implementation or task starts.
5. Record results, limits, and a successor's next action; stop after the review.

## Progress and handoff

Inspected all current foundation files relevant to this review and the historical source. The table below records historical review conclusions, not a second current-state backlog. Retained state belongs in README; existing needs remain owned by README and task 002.

## Review conclusions

“ALREADY COVERED” means sufficient support at this foundation's current documentation scope, not an implemented runtime or proof of external-tool effectiveness. Where a seed mixes a useful principle and speculative machinery, both dispositions are explicit.

| Seed | Classification | Evidence and disposition |
| --- | --- | --- |
| 1 — Diagnostic depth / modes | ALREADY COVERED; DISCARD named modes | Bounded scope, task-specific validation, and reasoning classes already allow an explicitly requested deep or focused review. AGENTS requires a finite stop. A mode taxonomy adds no demonstrated capability. Overlaps 15. |
| 2 — Scoped context packages | ALREADY COVERED; DISCARD automated packs | AGENTS routes through README and the selected task; the protocol loads context only along relevant dependencies and links authoritative facts. Task context/dependencies already provide a manual package. No measured context-cost or correctness failure justifies manifests or an assembler. |
| 3 — Capability-aware specialized agents | ALREADY COVERED; DISCARD routing layer | The protocol separates capabilities from reasoning, verifies availability, and records missing access as a blocker or handoff. No actual specialized-agent workflow needs automatic assignment. Routing proposals merge with 7 and 10 and are discarded. |
| 4 — Cross-agent evidence and artifact handoff | ALREADY COVERED | Task checkpoints, authoritative references, external-resource metadata, freshness, ownership/access, and proportionate verification support a successor consuming relevant evidence. AGENTS treats agent/tool outputs as evidence rather than authority. No new provenance or handoff schema is needed now. Overlaps 12. |
| 5 — Stronger tracking | DISCARD | Markdown tasks and the README index suffice for the observed two pre-review tasks. There is no demonstrated volume, synchronization requirement, or tracking failure. Tracker integrations/databases would add a second state system without evidence. |
| 6 — More expressive metadata | ALREADY COVERED; DISCARD speculative fields | Existing tasks/protocol express reasoning, capabilities, dependencies, constraints, risks, required user input, validation, and recovery limits where relevant. The outline is adaptable and explicitly omits irrelevant fields. Duration, preferred agent, cost, and retry schemas have no demonstrated consumer. |
| 7 — Cost/capability model routing | ALREADY COVERED principle; DISCARD router | The protocol selects the lowest sufficient reasoning class and keeps capability requirements separate from product names. Automatic cost/model routing merges with 3 and 10; no execution history or budget-driven routing requirement justifies it. |
| 8 — Usage/cost telemetry | DISCARD | Tasks already record results, failures, validation, and interventions when material. There is no substantial workload, budget problem, or defined routing decision requiring resource telemetry. Recording hypothetical signals is premature. |
| 9 — Explicit research workflows | ALREADY COVERED; DISCARD mode catalog/monitoring | The protocol supports primary sources, material conclusions, source/date/version attribution, and uncertainty. A concrete research task can specify other sources and its validation. No research domain or monitoring need exists; broader workflow machinery is unsupported. |
| 10 — Multi-agent orchestration | DISCARD | Task dependencies, handoffs, capability requirements, and validation already leave room for later coordination. This repository has no concurrent-work requirement or observed scheduling/conflict failure. Merge routing and orchestration machinery from 3 and 7 here; do not retain a speculative runtime backlog. |
| 11 — Multi-project coordination | ALREADY COVERED reuse boundary; DISCARD central coordinator | AGENTS defines a reusable foundation rather than a workspace for future products. The protocol explains separate-project adoption and replacing state/validation claims. No cross-project dependencies or global routing/budget requirement exists. |
| 12 — External applications/assets | ALREADY COVERED | The protocol defines resource authority, locators, access/version, observations, validation, reproduction/recovery, and cache/source distinctions when a real resource exists. Task 001 records an external-state walkthrough and its limits. No registered resources justify storage, synchronization, or asset-platform work. Merge provenance/handoff concerns from 4 here. |
| 13 — Git/review/release automation | ALREADY COVERED boundaries; DISCARD automation | Canonical `master`, proposal branches, explicit integration approval, and truthful Git observations are already defined. No release/product/CI workflow or remote is available to automate. The recorded remote-verification limit is an access/evidence issue, not justification for inventing infrastructure. |
| 14 — Generator/template automation | KEEP AS IDEA, narrowed | Reuse is the stated purpose and the protocol defines manual adoption. Retain only a possible small adoption command/template, conditional on validated actual adoption and repeated setup friction. Discard configurable profiles and migration/versioning machinery without observed demand. README owns the retained idea; no new task is ready. |
| 15 — Harness health/self-improvement | ALREADY COVERED; DISCARD periodic diagnostics | Meaningful milestone validation, final consistency review, discovered-gap handling, and a separate HIGH task for major redesign supported by repeated observed failures are already specified. First-use task 002 captures usability friction. Merge explicit diagnostic concerns with 1; no health monitor or improvement loop is justified. |
| 16 — Autonomy profiles | ALREADY COVERED decision policy; DISCARD profile labels | AGENTS permits cheap reversible decisions and escalates consequential commitments; explicit user authorization counts. Task constraints/user input can specialize execution within governing instructions. No observed interaction failure requires named autonomy profiles or a new policy mechanism. |

The source's concluding extensibility concern is already covered by distinct context, state, task, reasoning, capability, artifact, and evidence conventions. It does not justify an abstract extension framework or new architecture document.

### Needs, tasks, and reasoning

- No new NEED / GAP or READY TASK is justified by this review. Missing first-use direction and actual-use evidence are real existing needs, already represented in README and blocked task 002; speculative machinery does not resolve them.
- The only retained future idea is the narrowed reuse automation possibility. No other seed earns a separate current-state entry. Discarding a proposal now does not prevent a later task supported by new evidence.
- No retained item currently warrants HIGH reasoning. A future major harness redesign would warrant HIGH only after repeated observed failures, as existing policy already requires; a concrete first-use brief could independently expose an architectural/security decision. Neither condition has been established here.

### Validation and handoff

Validation on 2026-09-28 in the Windows PowerShell-hosted terminal:

- `pwsh -NoProfile -File tools/Check-Foundation.ps1`: PASS across six Markdown files, including this record and both new README links.
- `git diff --check` and `git diff --no-index --check -- NUL tasks/003-review-design-seeds.md`: no whitespace errors in the tracked change or new untracked task. Ordinary Git diff alone does not cover untracked files.
- Manual semantic consistency review: PASS. All 16 seeds are accounted for, component dispositions and merges are explicit, existing support is distinguished from runtime implementation and actual-use validation, and the sole retained idea has evidence and an actionability condition. README remains the current-state owner; this task holds review evidence. Existing goals/needs, task 002's blocker/status, and the next first-use action remain consistent. No new executable backlog or HIGH task is implied.
- `git status --short --branch`: only README modified and this task added on `codex/review-design-seeds`. No source copy, implementation, infrastructure, or newly proposed task execution occurred.

Limits: the local checker verifies links/entry points, not semantic truth; semantic review used the repository and historical source. No external-tool, real-project, remote, or broad foundation-effectiveness validation is claimed.

Review acceptance is complete. Only README's work index and later idea changed outside this review record. No operating policy, checker, first-use task, or external resource changed. Changes remain uncommitted on the proposal branch; completion is not integration approval. A successor can review README and this record as the exact two-file proposal under AGENTS' approval boundary. The project next action remains obtaining the first-use brief for task 002. No dependent work remains for this review; stop.
