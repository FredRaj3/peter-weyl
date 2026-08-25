/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# Matrix coefficients are closed under product and conjugate — locked statement

Board "MatrixCoefficients" of the Problem Market group "Peter–Weyl in Lean". A submission
closes the `sorry` below, keeping the statement verbatim. Everything from the top of this
file through the `:= by` is the locked region. See tasks/MatrixCoefficients.md.
-/
import Mathlib

noncomputable section

namespace MatrixCoefficients

/-- The matrix coefficients of continuous finite-dimensional unitary representations
of `G`, as a set of continuous functions `G → ℂ`. -/
def matrixCoeffs (G : Type*) [Group G] [TopologicalSpace G] : Set C(G, ℂ) :=
  {f | ∃ (n : ℕ) (π : G →* Matrix.unitaryGroup (Fin n) ℂ),
        Continuous (fun g => (π g : Matrix (Fin n) (Fin n) ℂ)) ∧
        ∃ i j : Fin n, ∀ g, f g = (π g : Matrix (Fin n) (Fin n) ℂ) i j}

/-- The span of the matrix coefficients is closed under multiplication
(tensor/Kronecker product of representations) and under `star`
(conjugate representation). -/
theorem mul_star_mem_span_matrixCoeffs (G : Type*) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [CompactSpace G] [T2Space G] {f g : C(G, ℂ)}
    (hf : f ∈ Submodule.span ℂ (matrixCoeffs G))
    (hg : g ∈ Submodule.span ℂ (matrixCoeffs G)) :
    f * g ∈ Submodule.span ℂ (matrixCoeffs G) ∧
      star f ∈ Submodule.span ℂ (matrixCoeffs G) := by
  sorry

end MatrixCoefficients
