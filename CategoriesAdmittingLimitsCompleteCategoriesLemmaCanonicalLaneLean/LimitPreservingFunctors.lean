import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure LimitPreservingFunctorsPackage where
  preservesSmallLimits : Prop
  preservesSmallColimits : Prop
  continuousFunctor : Prop
  cocontinuousFunctor : Prop

structure LimitPreservingFunctorsEvidence (F : LimitPreservingFunctorsPackage) where
  preservesSmallLimitsClosed : F.preservesSmallLimits
  preservesSmallColimitsClosed : F.preservesSmallColimits
  continuousFunctorClosed : F.continuousFunctor
  cocontinuousFunctorClosed : F.cocontinuousFunctor

def LimitPreservingFunctorsClosed (F : LimitPreservingFunctorsPackage) : Prop :=
  F.preservesSmallLimits ∧ F.preservesSmallColimits ∧ F.continuousFunctor ∧ F.cocontinuousFunctor

theorem limit_preserving_functors_closed_from_evidence
    (F : LimitPreservingFunctorsPackage) (E : LimitPreservingFunctorsEvidence F) :
    LimitPreservingFunctorsClosed F := by
  exact And.intro E.preservesSmallLimitsClosed
    (And.intro E.preservesSmallColimitsClosed
      (And.intro E.continuousFunctorClosed E.cocontinuousFunctorClosed))

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse