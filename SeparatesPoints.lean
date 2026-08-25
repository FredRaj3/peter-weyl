/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# Finite-dimensional unitary representations separate points — locked statement

Board "SeparatesPoints" of the Problem Market group "Peter–Weyl in Lean". A submission
closes the `sorry` below, keeping the statement verbatim. Everything from the top of this
file through the `:= by` is the locked region. See tasks/SeparatesPoints.md.
-/
import Mathlib

noncomputable section

namespace SeparatesPoints

/-- A nontrivial element of a compact Hausdorff group is detected by some continuous
finite-dimensional unitary representation. This is the analytic heart of Peter–Weyl
(compact self-adjoint convolution operators and their finite-dimensional eigenspaces). -/
theorem exists_rep_ne_one (G : Type*) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [T2Space G] {g : G} (hg : g ≠ 1) :
    ∃ (n : ℕ) (π : G →* Matrix.unitaryGroup (Fin n) ℂ),
      Continuous (fun x => (π x : Matrix (Fin n) (Fin n) ℂ)) ∧ π g ≠ 1 := by
  sorry

end SeparatesPoints
