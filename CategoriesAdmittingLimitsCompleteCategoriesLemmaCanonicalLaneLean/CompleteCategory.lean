import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean.LimitsAndColimits

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CompleteCategoryPackage (L : LimitsPackage) where
  hasAllSmallLimits : Prop
  hasAllSmallColimits : Prop
  completenessProof : Prop
  cocompletenessProof : Prop

structure CompleteCategoryEvidence {L : LimitsPackage} (C : CompleteCategoryPackage L) where
  hasAllSmallLimitsClosed : C.hasAllSmallLimits
  hasAllSmallColimitsClosed : C.hasAllSmallColimits
  completenessProofClosed : C.completenessProof
  cocompletenessProofClosed : C.cocompletenessProof

def CompleteCategoryClosed {L : LimitsPackage} (C : CompleteCategoryPackage L) : Prop :=
  C.hasAllSmallLimits ∧ C.hasAllSmallColimits ∧ C.completenessProof ∧ C.cocompletenessProof

theorem complete_category_closed_from_evidence {L : LimitsPackage} (C : CompleteCategoryPackage L)
    (E : CompleteCategoryEvidence C) : CompleteCategoryClosed C := by
  exact And.intro E.hasAllSmallLimitsClosed
    (And.intro E.hasAllSmallColimitsClosed
      (And.intro E.completenessProofClosed E.cocompletenessProofClosed))

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse