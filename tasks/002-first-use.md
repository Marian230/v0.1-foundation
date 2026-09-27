# 002 — Validate the foundation through a first real use

Status: blocked
Reasoning: MEDIUM (reassess after the user selects the actual work)
Required capabilities: repository read/write; additional execution and validation tools/access depend on the selected outcome

## Objective and scope

Use the foundation for one small real task and determine whether a fresh agent can execute it and hand it off using repository context. Capture observed gaps and make only small relevant corrections.

Non-goals: invent a product, build a generator/orchestrator, run a synthetic long-term workload, or expand into all possible future disciplines. This task does not authorize product implementation in the reusable foundation repository.

## Context and dependencies

Read [README](../README.md), [AGENTS](../AGENTS.md), and [work protocol](../docs/work.md). The bootstrap task is relevant only if its evidence or integration state is in question.

User input required: a real desired outcome, destination repository/environment, observable success, and relevant constraints or access. Recommendation: the smallest task the user already needs. Use a separate project repository for concrete product work; agree its destination before writing outside this foundation. No generator is needed.

Blocker/unblock condition: the brief is missing. Once supplied, verify capabilities and dependencies, specialize scope and acceptance below, choose the lowest adequate reasoning class, and change status to ready. Any consequential architecture decision exposed by the brief must be resolved before dependent implementation, potentially in a separate HIGH task.

## Acceptance and validation

1. Before execution, the destination contains a bounded task with concrete outcome-specific acceptance and checks. This generic record alone is insufficient to start implementation.
2. Execute one authorized real outcome and record actual validation evidence appropriate to it. Required checks and external state, if any, must be verified through the needed capabilities.
3. The destination's materially affected current knowledge and task state are updated; a successor can determine result, evidence, limits, and next action without chat.
4. Record concise observations here about foundation usability, including either observed friction with evidence or that none was found. Capture justified follow-ups without executing them. Do not generalize one success into universal validation.

## Progress and handoff

No pilot work has started. This follow-up is RECOMMENDED because the bootstrap demonstrates document-level capabilities but has no actual-use evidence. Next action: obtain the brief, then scope the concrete task. Foundation acceptance is recorded in the bootstrap task; no ready product task is implied.
