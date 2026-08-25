/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# The Peter–Weyl theorem: density of matrix coefficients — locked statement

Capstone board "PeterWeyl" of the Problem Market group "Peter–Weyl in Lean". A submission
closes the `sorry` below, keeping the statement verbatim. Everything from the top of this
file through the `:= by` is the locked region. See tasks/PeterWeyl.md.
-/
import Mathlib

noncomputable section

namespace PeterWeyl

/-- The matrix coefficients of continuous finite-dimensional unitary representations
of `G`, as a set of continuous functions `G → ℂ`. -/
def matrixCoeffs (G : Type*) [Group G] [TopologicalSpace G] : Set C(G, ℂ) :=
  {f | ∃ (n : ℕ) (π : G →* Matrix.unitaryGroup (Fin n) ℂ),
        Continuous (fun g => (π g : Matrix (Fin n) (Fin n) ℂ)) ∧
        ∃ i j : Fin n, ∀ g, f g = (π g : Matrix (Fin n) (Fin n) ℂ) i j}

/-- **Peter–Weyl**: on a compact Hausdorff group, the span of the matrix coefficients
of continuous finite-dimensional unitary representations is dense in `C(G, ℂ)`
(compact-open topology; for compact `G` this is the sup-norm topology). -/
theorem peter_weyl (G : Type*) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [T2Space G] :
    Dense (↑(Submodule.span ℂ (matrixCoeffs G)) : Set C(G, ℂ)) := by
  sorry

end PeterWeyl
