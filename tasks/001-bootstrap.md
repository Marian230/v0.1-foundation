# 001 — Bootstrap the reusable foundation

Status: done
Reasoning: HIGH
Required capabilities: repository read/write, Git, terminal with PowerShell 5.1+

## Objective and scope

Create the smallest durable foundation that lets fresh agents find context, execute bounded work, validate results, maintain current reality, and hand off without chat. Include operating policy, a compact project-state model, task semantics, external-resource conventions, and acceptance evidence.

Non-goals: product code, chosen stack, architecture for a hypothetical product, generator, task-tracker application, multi-agent runtime, CI framework, asset platform, recurring work, and speculative backlog.

## Context and dependencies

- [Operating policy](../AGENTS.md), [current state](../README.md), and [work protocol](../docs/work.md) are the durable result and authority map.
- Initial observation: empty repository, unborn `master`, no remote, no existing project constraints or artifacts. No Python executable was on PATH; validation uses available PowerShell without installing tooling.
- The user requested autonomous reversible bootstrap work and explicit review before integration into `master`. The project domain is intentionally undecided.
- Structural decision: current project state stays in README; work history/evidence stays in tasks; detailed conventions stay in one protocol. Dedicated architecture, resource, or decision directories are deferred until actual facts justify them. This limits context and duplication while retaining distinct state concepts.

## Acceptance proof

Each row identifies the repository mechanism a fresh agent can inspect. The final review verifies semantic sufficiency, not merely file existence.

| # | Required capability | Repository evidence |
| --- | --- | --- |
| 1 | Understand repository purpose | README introduction and Current reality |
| 2 | Separate known facts from undecided choices | README Current reality, Goals and gaps, Decisions needed and risks |
| 3 | Locate authoritative information | AGENTS Route context; work protocol Authority and relevant context |
| 4 | Approach substantial work | AGENTS Substantial-work contract |
| 5 | Define bounded objective, scope, acceptance, validation | Work protocol A bounded task; this task and task 002 as concrete records |
| 6 | Load relevant context selectively | AGENTS Route context; work protocol Authority and relevant context |
| 7 | Express reasoning and capability requirements | Work protocol Reasoning and capabilities; task metadata |
| 8 | Act autonomously on appropriate decisions | AGENTS Act and escalate |
| 9 | Escalate consequential choices | AGENTS Act and escalate and Git boundary |
| 10 | Distinguish goals, needs, questions, risks, tasks, ideas | Work protocol Project state semantics; README state sections |
| 11 | Persist discoveries without expanding execution | Work protocol Discoveries and scope; task 002 |
| 12 | Validate observable results | Work protocol Validation and completion; link checker and validation results below |
| 13 | Update materially changed reality | AGENTS Substantial-work contract; work protocol authority and external-resource rules |
| 14 | Leave a coherent handoff | Work protocol A bounded task; Progress and handoff below |
| 15 | Find justified follow-up work | README Work index and next action; task 002 scope and unblock condition |

## Validation

Required: run the local link check; verify it rejects a broken local link; inspect Git for accidental product/generated/secret artifacts; perform one final semantic consistency/handoff review against all 15 rows, including an external-state scenario and a missing-capability scenario.

Historical pre-commit validation on 2026-09-28 in Windows PowerShell-hosted terminal using PowerShell 7.6.5 (Git observations below describe that validation-time state):

- `pwsh -NoProfile -File tools/Check-Foundation.ps1`: PASS, all entry points and local inline file links across five Markdown files.
- Negative check: temporarily created `link-check-probe.md` linking to `missing-bootstrap-probe-target.md`; the same command reported the missing target and exited 1. Removed the probe in `finally`; the clean check then passed. No probe artifacts remain.
- `git status --short --branch` and the recursive file inventory: only the seven intended foundation files, on unborn `codex/bootstrap-foundation`. Manual content inspection found no credentials, product code, generated artifacts, or unintended project choices. `git diff --check` returned no errors but does not cover these untracked files, so it is not used as content proof.
- One final semantic consistency/handoff review read all five Markdown files against the 15 rows above: PASS. The only material clarification added was that adopting the foundation must replace its state and must not inherit its validation or approval claims.
- External-state walkthrough: a real engine asset would receive a linked focused resource document with locator, authority, access/version, observed state, validation and recovery limits; the task would hold change evidence. No actual engine access or asset validation is claimed.
- Missing-capability walkthrough: an agent without required engine/VM access records a blocker and unblock condition; repository checks cannot justify marking the external outcome done. An unrelated improvement becomes a separate evidenced task or gap, not continued execution.
- Context/handoff walkthrough: README routes to policy, protocol, and the selected task. A successor can see undecided project direction, missing first-use input, integration boundary, and exact next action without reading chat or unrelated completed tasks.

Limits: checks establish this bootstrap's documentation capabilities; they do not establish successful real-project use. PowerShell 5.1 compatibility has not been executed locally. Integration approval is separate from bootstrap completion.

## Progress and handoff

Completed operating policy, human-facing current state, work/context/external-resource conventions, task records, a local link check, and minimal secret-file ignore rules. All acceptance rows are supported by repository contents and the validation above. Current state is in README; no external resource or product state changed.

At the original bootstrap handoff, the files were uncommitted on unborn `codex/bootstrap-foundation`; there was no Git snapshot, remote PR, or integration approval. The exact review set was `.gitignore`, `AGENTS.md`, `README.md`, `docs/work.md`, `tasks/001-bootstrap.md`, `tasks/002-first-use.md`, and `tools/Check-Foundation.ps1`. At that point, ordinary unstaged `git diff` did not show the untracked content. No integration was attempted during bootstrap.

Historical post-commit reconciliation on 2026-09-28: Git inspection confirmed that all seven foundation files were tracked in commit `9b3478f6f78fb86603918e946bc28e5a0aa975a2` on `codex/bootstrap-foundation`, with a clean working tree before that documentation correction. No `master` branch or configured remote existed, and no integration approval was recorded at that time. README and this handoff were the only corrected records; the historical validation above remained intact. Those documentation corrections were then uncommitted on the proposal branch. The handoff called for review of the committed foundation together with the working-tree diff before approving an exact change set, and integration into `master` only after explicit approval under AGENTS policy.

Historical reconciliation validation: `pwsh -NoProfile -File tools/Check-Foundation.ps1` passed across five Markdown files; `git diff --check` reported no whitespace errors. Reviewed the documentation diff and remaining references to unborn/uncommitted state: they were historical observations, general policy, or the then-uncommitted corrections above. `git status --short`, `git branch -avv`, and `git remote -v` confirmed that only README and this task were modified, the proposal branch still pointed to the bootstrap commit, and no remote or `master` branch was added during that reconciliation. Foundation design and first-use scope/status were unchanged; no integration was performed during that reconciliation.

Acceptance/integration reconciliation on 2026-09-28: the user's instruction to reconcile after pushing the accepted `master` explicitly identifies the reviewed foundation as integrated/accepted. This is the recorded user acceptance reference for the foundation observed on `master` at `be3deb07ea3093c2839b33a76257f83510fc722b`. Git inspection confirmed that `master` and `codex/bootstrap-foundation` both point to that revision, which includes the earlier documentation correction and original bootstrap commit. The working tree was clean before this reconciliation. No new integration, commit, or push is performed by this documentation correction.

Remote evidence limit: the user reports a completed push to the configured remote, but `git remote -v` and `git config --get-regexp '^(remote|branch)\.'` returned no configuration, and `git for-each-ref` showed no remote-tracking refs in this checkout. The remote destination and pushed revision remain unverified. Verification requires the actual remote locator or access to the checkout containing that configuration; no remote or infrastructure is invented here. Current project state is summarized in README.

Acceptance/integration reconciliation validation: `pwsh -NoProfile -File tools/Check-Foundation.ps1` passed across five Markdown files; `git diff --check` reported no whitespace errors. Reviewed the three affected records against live Git and the user's acceptance statement: current handoffs no longer request foundation approval, pre-integration evidence is explicitly historical, and reported push success is distinguished from independently verified local state. Only README and tasks 001/002 have documentation edits; task 002 remains blocked and unstarted. These corrections remain uncommitted on `master`; foundation design, branch revisions, and Git configuration are unchanged. Remote verification remains limited as described above.

Next action: obtain the first-use brief; independently verify the reported push when the actual remote locator or configured checkout is available. The justified discovery is the need for actual first-use evidence, captured in [002 — First real use](002-first-use.md); it remains blocked and has not started. No speculative infrastructure tasks were added. No known remaining bootstrap work requires HIGH reasoning. Stop here.
