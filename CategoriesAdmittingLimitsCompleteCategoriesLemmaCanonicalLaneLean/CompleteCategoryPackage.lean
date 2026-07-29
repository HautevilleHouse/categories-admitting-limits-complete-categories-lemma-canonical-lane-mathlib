import canonicalLaneMathlib.LimitExistencePackage

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CompleteCategoryPackage where
  category : Type u
  allSmallLimitsExist : Prop
  limitFunctorExists : Prop
  completenessCondition : Prop

structure CompleteCategoryEvidence (C : CompleteCategoryPackage) where
  allSmallLimitsExistClosed : C.allSmallLimitsExist
  limitFunctorExistsClosed : C.limitFunctorExists
  completenessConditionClosed : C.completenessCondition

def CompleteCategoryClosed (C : CompleteCategoryPackage) : Prop :=
  C.allSmallLimitsExist ∧ C.limitFunctorExists ∧ C.completenessCondition

theorem complete_category_closed_from_evidence (C : CompleteCategoryPackage)
    (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.allSmallLimitsExistClosed
    (And.intro E.limitFunctorExistsClosed E.completenessConditionClosed)

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse