import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean.CompleteCategories

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CategoriesAdmittingLimitsCompleteCategoriesLemma where
  C : SmallCategory
  admitsLimits : Prop
  complete : Prop
  implication : admitsLimits → complete

structure CategoriesAdmittingLimitsCompleteCategoriesLemmaEvidence
    (lemma : CategoriesAdmittingLimitsCompleteCategoriesLemma) where
  admitsLimitsClosed : lemma.admitsLimits
  completeClosed : lemma.complete
  implicationClosed : lemma.implication lemma.admitsLimits

def CategoriesAdmittingLimitsCompleteCategoriesLemmaClosed
    (lemma : CategoriesAdmittingLimitsCompleteCategoriesLemma) : Prop :=
  lemma.admitsLimits ∧ lemma.complete ∧ (lemma.admitsLimits → lemma.complete)

theorem categories_admitting_limits_complete_categories_lemma_closed_from_evidence
    (lemma : CategoriesAdmittingLimitsCompleteCategoriesLemma)
    (E : CategoriesAdmittingLimitsCompleteCategoriesLemmaEvidence lemma) :
    CategoriesAdmittingLimitsCompleteCategoriesLemmaClosed lemma := by
  exact And.intro E.admitsLimitsClosed
    (And.intro E.completeClosed E.implicationClosed)

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
