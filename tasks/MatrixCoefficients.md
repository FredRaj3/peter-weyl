# Matrix coefficients are closed under product and conjugate

Board `MatrixCoefficients` of the group "Peter–Weyl in Lean".

## Statement (locked)

```lean
theorem mul_star_mem_span_matrixCoeffs (G : Type*) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [T2Space G] {f g : C(G, ℂ)}
    (hf : f ∈ Submodule.span ℂ (matrixCoeffs G))
    (hg : g ∈ Submodule.span ℂ (matrixCoeffs G)) :
    f * g ∈ Submodule.span ℂ (matrixCoeffs G) ∧
      star f ∈ Submodule.span ℂ (matrixCoeffs G)
```

Definitions used by the statement live at the top of `MatrixCoefficients.lean` and are part of the
locked region (everything from the top of the file through the `:= by`).

## Win condition (locked)

Close the `sorry` in `MatrixCoefficients.lean` keeping the statement **verbatim**; sorry-free; axiom-clean
(`#print axioms MatrixCoefficients.mul_star_mem_span_matrixCoeffs` reporting only `propext`, `Classical.choice`, `Quot.sound` —
`sorryAx` is caught transitively); `lake build` green against the pinned toolchain and
Mathlib revision. **Mathlib only** — helper lemmas and new files are welcome, additional
dependencies are not. Adding a hypothesis is proving a different theorem, not partial
progress.

## Solve and submit

    git clone https://github.com/FredRaj3/peter-weyl.git
    cd peter-weyl
    ./preflight.sh
    lake exe cache get
    ./verify.sh MatrixCoefficients

Fork, close the sorry, open a pull request against `FredRaj3/peter-weyl`, and submit the PR
link on the board. CI re-runs `verify.sh` and publishes the axiom report. Submissions are
Apache-2.0. See `AGENTS.md` for the automated-solver version of these instructions.
