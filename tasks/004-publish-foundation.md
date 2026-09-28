# 004 — Publish the foundation to GitHub

Status: in progress
Reasoning: LOW
Required capabilities: repository read/write, Git, authenticated GitHub browser access, network access

## Objective and scope

Create a GitHub repository named `v0.1-foundation`, configure it as this checkout's `origin`, and push canonical `master`.

Scope includes recording the user's integration/publication approval, preserving the existing accepted history, creating the remote repository, pushing `master`, and updating current repository state with verified remote evidence. It does not include product work, rewriting history, creating releases, or adding speculative GitHub automation.

## Context and dependencies

The user explicitly authorized publication on 2026-09-28 with: “ok, now push it to my github into master as v0.1-foundation repo name”. This authorizes integration/publication of the current accepted foundation and identifies the repository name and branch.

Git inspection found a clean local `master` at `f93cdea`, with no configured remote. GitHub CLI is not installed. The GitHub web workflow is open but requires the user to authenticate; authentication must not be automated. Repository visibility is also not specified and materially determines external access.

The user authenticated in the GitHub browser and selected private visibility. GitHub repository creation completed at `https://github.com/Marian230/v0.1-foundation`; its clone URL is `https://github.com/Marian230/v0.1-foundation.git`. Local `origin` is configured to that URL. The repository description and `master` publication remain in progress.

## Acceptance and validation

1. A GitHub repository named `v0.1-foundation` exists under the user's authenticated account with the user-selected visibility.
2. Local `origin` uses that repository's Git URL and `master` tracks `origin/master`.
3. `git push -u origin master` succeeds without rewriting history.
4. The GitHub repository visibly shows `master` at the same commit as local `HEAD`.
5. README and this task accurately record the verified remote state, validation evidence, and any limitations.

## Progress and handoff

The private GitHub repository has been created and local `origin` configured. The user also requested a generic repository description and a basic contextual README. The existing README already provides the detailed context; a concise adoption sentence was added, and the planned GitHub description is: “Reusable agent-first foundation for bounded work, durable project context, validation, and clean handoffs.”

Next: validate and commit the publication record on local `master`, push it to `origin/master`, set the GitHub description, verify local/remote revisions and visible repository content, then mark this task done.
