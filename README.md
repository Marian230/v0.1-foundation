# Agent-first project foundation

A small, reusable repository for bounded agent work, durable knowledge, and clear handoffs. No product, language stack, engine, deployment target, task-tracker application, orchestrator, or project generator has been selected or built.

Start here to understand current state. Agents then follow [AGENTS.md](AGENTS.md); authors of substantial tasks use [docs/work.md](docs/work.md).

## Current reality

The foundation consists of operating policy, context/work conventions, Markdown task records, and a local documentation-link check. There is no concrete product architecture to document yet. No external project resources are registered. These statements describe this repository, not every resource on the user's machine.

Bootstrap inspection found an empty Git repository, an unborn `master`, and no remote. The bootstrap is proposed on `codex/bootstrap-foundation`; it has not been integrated or approved as accepted state. With no initial commit, this branch is an unborn HEAD, not a committed branch snapshot. Inspect Git for live branch, commit, and remote facts rather than treating this paragraph as a live Git inventory.

## Goals and gaps

- **Goal:** enable a fresh capable agent to complete bounded work without previous chat history.
- **Goal:** validate the foundation through one real use before expanding its mechanisms.
- **Need:** a user-selected first project and a small real outcome with an observable result. This is missing direction, not permission to invent a product.
- **Need:** first-use evidence; bootstrap checks cannot establish effectiveness across engines, VMs, external tools, or all future disciplines.

## Decisions needed and risks

- **Question — first use:** Which concrete project and bounded outcome should exercise the foundation? This determines scope and capabilities. Options: a small software change, a specialized tool/asset workflow, or another concrete project. Recommendation: use the smallest real task the user already needs. No domain is selected by default.
- **Question — acceptance:** Has the user reviewed and approved this proposed foundation for `master`? Local review is sufficient; adding a remote is not required. Review the exact files/change set before approving integration.
- **Risk:** documentation and external state can drift. Each task must update materially affected authoritative records and report what it actually verified.
- **Blocker:** first-use execution awaits the selected outcome and access described in its task. This does not block review of the foundation.

## Work index and next action

Task files own status and detailed evidence; this index does not duplicate their lifecycle fields.

| Task | Purpose |
| --- | --- |
| [001 — Bootstrap](tasks/001-bootstrap.md) | Scope, validation, acceptance proof, and bootstrap handoff |
| [002 — First real use](tasks/002-first-use.md) | Exercise the foundation on a user-selected bounded task |

Next: review the proposed foundation, then provide a short first-use brief: desired outcome, where the work belongs, observable success, and relevant access or constraints. There is no independent ready implementation backlog. The first-use task is a justified follow-up, not authorization to start a product.

No later ideas are currently retained; hypothetical orchestration, generators, and automation are not committed work.

## Local check

Run `pwsh -NoProfile -File tools/Check-Foundation.ps1` from this repository (or `powershell -NoProfile -File tools/Check-Foundation.ps1` where Windows PowerShell is available). Requires PowerShell 5.1 or newer, with no installed modules or network access. It checks local Markdown file links and required entry points; it does **not** prove semantic correctness, task completion, external artifact validity, or absence of secrets.

The [bootstrap record](tasks/001-bootstrap.md) contains the semantic acceptance proof. Future tasks must choose validation appropriate to their actual outputs.
