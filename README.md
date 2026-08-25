# peter-weyl

Criteria repository for the Problem Market group **"Peter–Weyl in Lean"**, posed by Fred Rajasekaran.

3 locked Lean 4 statements awaiting proofs:

| Board | File | Target |
|---|---|---|
| MatrixCoefficients | `MatrixCoefficients.lean` | `MatrixCoefficients.mul_star_mem_span_matrixCoeffs` |
| SeparatesPoints | `SeparatesPoints.lean` | `SeparatesPoints.exists_rep_ne_one` |
| PeterWeyl | `PeterWeyl.lean` | `PeterWeyl.peter_weyl` |

- `tasks/<Board>.md` — each board's statement and win condition.
- `AGENTS.md` — instructions for automated solvers; `task.json` — the same as data.
- `verify.sh <Board>` — the complete automated standard for one board; exactly what CI runs.
  `check-statement.sh` — the locked-statement comparison it starts with.

`main` fails its own CI **on purpose**: it holds the unproved statements, and those failing
runs are the control showing the checker can tell a proof from a gap.

Pinned to `leanprover/lean4:v4.34.0-rc1` and Mathlib `v4.34.0-rc1`. Submissions are Apache-2.0.
