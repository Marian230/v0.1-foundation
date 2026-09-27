# Work and knowledge conventions

## Authority and relevant context

Use the ownership map in [AGENTS.md](../AGENTS.md). Begin with [current state](../README.md), select the active task, and load its required context. Expand only along dependencies needed to resolve a question. Completed tasks and unrelated domains are normally unnecessary context.

Authoritative project facts belong in a current document, not solely in a completed task. Task records own execution evidence; they link to current knowledge instead of copying it. If a task and current documentation disagree, inspect actual artifacts and reconcile the authoritative record. Distinguish observed facts, assumptions, accepted decisions, and unverified claims. Record an assumption only when a wrong assumption would matter, with a way to verify it.

Add a focused document under `docs/` only when real knowledge needs a home, and link it from README or a relevant document. For example, current accepted architecture merits `docs/architecture.md` once concrete architecture exists. Update that file in place; Git preserves earlier reality. Add a decision record only when consequential rationale or rejected alternatives will be needed later. Do not create versioned architecture encyclopedias or empty knowledge categories.

When adopting the foundation into a separate project, carry over the operating policy and useful conventions, replace README's foundation-specific state with observed project reality, and create that project's own task records. Do not inherit bootstrap completion, approval, access, or validation claims as evidence about the new project. Manual adoption is sufficient until actual use justifies tooling.

## Project state semantics

README is the compact human-facing state page, not a chronological log:

| Concept | Meaning and promotion rule |
| --- | --- |
| Goal | Desired outcome; not necessarily an executable action |
| Need / gap | Missing capability, information, infrastructure, or decision; becomes a task only when executable scope is known |
| Question | Unresolved consequential uncertainty; include impact and the decision needed |
| Risk | A possible material obstacle; include its implication and useful mitigation |
| Blocker | An actual impediment; name affected work and the condition that removes it |
| Task | Bounded executable work in `tasks/`, with a link in README |
| Later / idea | Uncommitted possibility; retain only when evidence makes it worth remembering |

Remove resolved items from current state or replace them with the accepted fact; do not maintain a second history log. Keep task-specific blockers in the task; surface only important human-facing implications in README. Add stable identifiers only if cross-references need them.

## A bounded task

For substantial work, create `tasks/NNN-short-name.md` using the next unused number. Use descriptive headings, with this compact outline adapted to the task:

```text
# NNN — Title
Status: ready | in progress | blocked | done
Reasoning: LOW | MEDIUM | HIGH
Required capabilities: observable access/tools needed

## Objective and scope
Desired outcome, included work, explicit non-goals.
## Context and dependencies
Authoritative links, prerequisites, material constraints/assumptions,
uncertainties/risks, and user input if needed.
## Acceptance and validation
Observable criteria paired with checks, including meaningful failure cases.
## Progress and handoff
Work performed, results/evidence, failures or limits, blockers/unblock condition,
changed authoritative state, discoveries, and exact next action.
```

Objective, scope, acceptance, validation, and status are essential. Omit irrelevant optional fields instead of filling placeholders. No parser or rigid schema is required.

`ready` means sufficiently specified with known prerequisites satisfied. Move to `in progress` when execution starts. Use `blocked` when required input, access, dependency, or validation prevents completion; record the cause and unblock condition. Return to `ready` or `in progress` when resolved. Use `done` only when acceptance, required validation, material state updates, and handoff are complete. `cancelled` or `superseded` may be used with a reason and replacement link when needed. Reopen incorrectly completed work explicitly rather than silently overwriting its evidence. Status describes work, not merge approval.

While in progress, keep a concise checkpoint at meaningful milestones or before interruption. A successor must find the current result, relevant files and external changes, evidence, unresolved issues, and next action without chat. Record the working branch/revision when useful; Git remains the authority for live changes. Never imply an uncommitted working tree is a preserved Git snapshot.

## Reasoning and capabilities

Choose the lowest reasoning class likely to succeed reliably:

- **LOW:** routine execution, mechanical edits, straightforward tests or documentation with clear criteria.
- **MEDIUM:** bounded substantive implementation, integration, or debugging.
- **HIGH:** ambiguous architecture, difficult novel debugging, security design, major migrations, conflicting constraints, or major harness redesign.

These are requirements for work, not model product names. Separate a consequential HIGH design decision from routine execution when that creates a useful bounded handoff; do not fragment work merely to assign labels.

Capabilities are separate from reasoning: specify repository read/write, terminal/runtime, research, browser or desktop interaction, specialized application/engine/version, VM/machine access, hardware, or authorized external account as relevant. Verify actual availability before dependent execution. Missing capability is a gap or blocker; describe access needed or a verifiable handoff. Do not claim GUI, environment, or external-service validation from repository tests alone.

## Discoveries and scope

- **REQUIRED:** necessary for active acceptance. Handle in scope, or revise the task if new evidence invalidates the approach; escalate consequential scope changes.
- **RECOMMENDED:** supported by observed evidence but unnecessary now. Record a bounded task if executable, otherwise a need/question/risk in current state. Include why it matters and what would make it actionable.
- **OPTIONAL:** uncommitted experiment or possibility. Keep a short later idea only when useful; discard speculation.

Link a discovery to its authoritative home instead of duplicating its details. Never automatically start the resulting task. Repeated observed harness failures can justify a separate HIGH task; hypothetical future failures do not.

## External resources and research

Git is canonical for coordination and knowledge, not necessarily every artifact's bytes. When real external state matters, add one focused resource document under `docs/`, linked from the relevant task and current-state/context document. Do not create a registry before resources exist.

Record only useful metadata: purpose and relation to project work; stable locator or retrieval instructions; which system/artifact is authoritative; owner/access route and required application/version/capability; version, revision, hash, or last verified observation when available; how to validate; and how to recover or reproduce changes when feasible. Distinguish a local cache/export from its source. If reproducibility or rollback is unavailable, state that limitation before consequential mutation. Keep credentials out of locators and documents.

Record external changes and their evidence in the task, and update the resource's current record when reality changes. Explicitly label stale or unverified observations; do not infer that a tool succeeded because it was invoked.

For research, prefer primary/official sources. Persist only material conclusions in their relevant authoritative document with source URL/title, access date, applicable version/context, and uncertainty. Attribute external tool or agent claims and verify them proportionately. No broad research archive or automatic monitoring is required.

## Validation and completion

Choose checks before implementation that establish observable acceptance: tests, builds, structural/interface checks, artifact rendering, engine execution, environment inspection, or an explicit manual procedure with recorded results. Use failure cases where relevant. Prefer executable checks for stable invariants, but do not mistake a documentation checker for proof of behavior.

Record exact commands/procedures, relevant environment, observed results, and limitations. Repair a failed required check before using its output as a dependency. If a required check cannot run, leave the task blocked and describe the missing capability; partial evidence is not a pass. Optional checks may remain unrun when their limitation is explicit and required acceptance is still met.

Before marking done, perform one proportionate consistency/handoff review: acceptance evidence exists, current knowledge matches changed reality, justified discoveries have homes, and a successor knows the next action. Fix material issues. Stop; possible further improvement alone does not extend the task.

For local integration, obtain explicit user approval for the reviewed change set before committing/merging it into `master`; retain the approval reference in the task. If the approved change set changes materially, obtain renewed review. A remote PR/review workflow can replace this when actually available. Do not invent approval, commits, remotes, or releases.
