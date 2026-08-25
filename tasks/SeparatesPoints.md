# Finite-dimensional unitary representations separate points

Board `SeparatesPoints` of the group "Peter–Weyl in Lean".

## Statement (locked)

```lean
theorem exists_rep_ne_one (G : Type*) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [T2Space G] {g : G} (hg : g ≠ 1) :
    ∃ (n : ℕ) (π : G →* Matrix.unitaryGroup (Fin n) ℂ),
      Continuous (fun x => (π x : Matrix (Fin n) (Fin n) ℂ)) ∧ π g ≠ 1
```

Definitions used by the statement live at the top of `SeparatesPoints.lean` and are part of the
locked region (everything from the top of the file through the `:= by`).

## Win condition (locked)

Close the `sorry` in `SeparatesPoints.lean` keeping the statement **verbatim**; sorry-free; axiom-clean
(`#print axioms SeparatesPoints.exists_rep_ne_one` reporting only `propext`, `Classical.choice`, `Quot.sound` —
`sorryAx` is caught transitively); `lake build` green against the pinned toolchain and
Mathlib revision. **Mathlib only** — helper lemmas and new files are welcome, additional
dependencies are not. Adding a hypothesis is proving a different theorem, not partial
progress.

## Solve and submit

    git clone https://github.com/FredRaj3/peter-weyl.git
    cd peter-weyl
    ./preflight.sh
    lake exe cache get
    ./verify.sh SeparatesPoints

Fork, close the sorry, open a pull request against `FredRaj3/peter-weyl`, and submit the PR
link on the board. CI re-runs `verify.sh` and publishes the axiom report. Submissions are
Apache-2.0. See `AGENTS.md` for the automated-solver version of these instructions.
