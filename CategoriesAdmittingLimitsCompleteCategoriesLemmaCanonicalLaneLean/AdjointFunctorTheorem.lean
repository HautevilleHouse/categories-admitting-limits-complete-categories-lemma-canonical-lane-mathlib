import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure AdjointFunctorTheoremPackage where
  leftAdjointOfContinuous : Prop
  rightAdjointOfCocontinuous : Prop
  freydAdjointFunctorTheorem : Prop
  specialAdjointFunctorTheorem : Prop

structure AdjointFunctorTheoremEvidence (A : AdjointFunctorTheoremPackage) where
  leftAdjointOfContinuousClosed : A.leftAdjointOfContinuous
  rightAdjointOfCocontinuousClosed : A.rightAdjointOfCocontinuous
  freydAdjointFunctorTheoremClosed : A.freydAdjointFunctorTheorem
  specialAdjointFunctorTheoremClosed : A.specialAdjointFunctorTheorem

def AdjointFunctorTheoremClosed (A : AdjointFunctorTheoremPackage) : Prop :=
  A.leftAdjointOfContinuous ∧ A.rightAdjointOfCocontinuous ∧
  A.freydAdjointFunctorTheorem ∧ A.specialAdjointFunctorTheorem

theorem adjoint_functor_theorem_closed_from_evidence
    (A : AdjointFunctorTheoremPackage) (E : AdjointFunctorTheoremEvidence A) :
    AdjointFunctorTheoremClosed A := by
  exact And.intro E.leftAdjointOfContinuousClosed
    (And.intro E.rightAdjointOfCocontinuousClosed
      (And.intro E.freydAdjointFunctorTheoremClosed E.specialAdjointFunctorTheoremClosed))

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse