# 005 — Add independent task review

Status: done
Reasoning: MEDIUM
Required capabilities: repository read/write, Git inspection, PowerShell; a fresh agent with task-relevant validation capabilities for the independent review

## Objective and scope

Add the smallest workflow mechanism that lets a fresh reviewer independently determine whether every substantial task satisfies its objective, scope, acceptance criteria, and required validation from repository evidence rather than the worker's claims.

Scope includes review eligibility and lifecycle semantics, reviewer independence and evidence rules, PASS/FAIL/BLOCKED outcomes, bounded remediation and one re-review, capability/reasoning routing, and proportionate treatment of trivial work. It includes applying the mechanism to this task as a validation scenario.

Non-goals are building an orchestrator, automatically launching agents, changing the Git integration-approval boundary, requiring review bureaucracy for trivial work, or allowing the reviewer to repair implementation while reviewing it.

## Context and dependencies

Authoritative context: [current project state](../README.md), [operating policy](../AGENTS.md), and [work conventions](../docs/work.md).

The existing completion procedure requires a proportionate consistency/handoff self-review, but has no independent reviewer role or bounded review lifecycle. The repository currently has no product runtime or agent orchestrator, so the mechanism must remain repository-native and manually invocable. Review must preserve the existing separation between reasoning class and required capabilities and must not imply that a review PASS authorizes integration into `master`.

The working branch is currently canonical `master`. Per the Git boundary, this task will not commit or integrate its own changes without explicit user approval.

## Acceptance and validation

1. Authoritative workflow text requires an independent review before a substantial task becomes `done`, while trivial work keeps proportionate validation without a formal independent review.
2. A fresh reviewer can act without worker conversation, using only authoritative context, the task, identified Git state/diff, persisted evidence, and independently runnable validation.
3. The review procedure checks acceptance, scope creep, regressions, current documentation/state, unsupported claims, validation evidence, and handoff correctness; the reviewer does not modify implementation.
4. Review output is persisted with an identified target and exactly one of PASS, FAIL, or BLOCKED. FAIL contains bounded remediation requirements; BLOCKED identifies the missing evidence/capability and unblock condition.
5. At most one remediation pass and one independent re-review are allowed. A non-PASS re-review stops the task as blocked rather than creating an endless critic/fix loop.
6. Reasoning and capability selection remains proportionate to the task and review risk; no orchestrator or agent-launching implementation is introduced.
7. `pwsh -NoProfile -File tools/Check-Foundation.ps1` and `git diff --check` pass.
8. A fresh agent reviews this task's resulting change set under the new procedure, reruns practical validation, and records a terminal review outcome. This task becomes `done` only on PASS and after material state and handoff updates are complete.

Meaningful failure cases include a reviewer using worker chat, reviewing an unidentified change set, accepting only worker-reported test results when tests are practical to rerun, silently fixing the implementation, omitting an outcome or required checks, or starting a second remediation cycle.

## Progress and handoff

Task created after inspecting the clean `master` baseline at `0950f31`, current README, work conventions, recent task style, and the local structure checker.

Implemented a repository-native review gate in `AGENTS.md` and `docs/work.md`, and updated README current state and the work index. The mechanism adds `review` and `remediation` lifecycle states; defines independence, allowed evidence, target identification, mandatory checks, reviewer non-mutation, PASS/FAIL/BLOCKED records, and a maximum of two review attempts; preserves proportional reasoning/capability selection and the separate integration-approval boundary; and explicitly excludes trivial changes and orchestration.

Worker validation on Windows PowerShell from the repository root:

- `pwsh -NoProfile -File tools/Check-Foundation.ps1` returned `PASS: entry points and local inline file links in 8 Markdown files.`
- `git diff --check` exited 0. Git emitted only its existing line-ending conversion warnings for tracked Markdown files; it reported no whitespace errors.
- A semantic walkthrough of the documented transitions confirmed: initial PASS -> `done`; initial FAIL -> one bounded `remediation` -> review attempt 2; initial BLOCKED -> one attempt after the named evidence/capability is supplied, with implementation changes consuming the remediation pass; and any attempt 2 FAIL/BLOCKED -> terminal `blocked` pending explicit user decision or a separately authorized task. Trivial work bypasses the formal review record, and material changes during review invalidate the review.

Review target: baseline commit `0950f31` plus the complete current working-tree change set in `AGENTS.md`, `README.md`, `docs/work.md`, and untracked `tasks/005-independent-review.md`. Inspect with `git status --short`, `git diff -- AGENTS.md README.md docs/work.md`, and `Get-Content -Raw tasks/005-independent-review.md`. The reviewer may append only the review record and change lifecycle metadata in this task file; those review-only edits are not implementation changes. No integration approval has been requested or inferred.

Attempt 1 passed and this task is done. No implementation work remains; stop. Committing or integrating the reviewed change set into `master` still requires separate user approval under the Git boundary.

## Independent review — attempt 1

Reviewer independence: fresh reviewer; did not implement the target and used only authoritative repository context, the task, the identified Git target, persisted evidence, and independently executed validation.

Target: baseline `0950f31172cc336725c9c630f3b4fcd3d542fec7` plus the complete working-tree changes in `AGENTS.md`, `README.md`, `docs/work.md`, and this untracked task file as it existed before this review-only record and lifecycle update. Inspected the full tracked diff, complete task content, Git status, target file hashes, surrounding Markdown lifecycle references, and the local checker.

Validation rerun on Windows PowerShell from the repository root: `pwsh -NoProfile -File tools/Check-Foundation.ps1` exited 0 with `PASS: entry points and local inline file links in 8 Markdown files.`; `git diff --check` exited 0 with only line-ending conversion warnings and no whitespace errors. Independent policy assertions and semantic walkthrough confirmed substantial-versus-trivial eligibility, fresh-reviewer evidence boundaries, all required review dimensions, reviewer non-mutation, identified-target and persisted-outcome requirements, bounded remediation/re-review transitions, terminal attempt-2 handling, proportionate capability/reasoning routing, and the separate integration-approval boundary.

Findings: no unresolved material finding. The change set satisfies all eight acceptance criteria, covers the stated failure cases, introduces no orchestrator or agent-launching implementation, does not expand scope, and leaves README, policy, protocol, task status, evidence, limitations, and handoff mutually consistent. No integration approval is inferred. Exact next action: stop; any commit or integration into `master` still requires the separately documented approval boundary.

Outcome: **PASS**

## Integration approval

On 2026-09-28, after the independent PASS, the user explicitly approved this reviewed change set for canonical integration and publication with: “commit it with some meaningful commit message and push”. This authorizes committing the current reviewed files on `master` and pushing the resulting commit to `origin/master`; it does not authorize unrelated changes.
