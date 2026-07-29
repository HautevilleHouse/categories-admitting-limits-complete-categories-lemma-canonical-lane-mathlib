import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CompletenessConditionPackage where
  category : Type u
  allSmallLimits : Prop
  completenessWitness : Prop
  allSmallLimitsClosed : allSmallLimits
  completenessWitnessClosed : completenessWitness

def CompletenessConditionClosed (C : CompletenessConditionPackage) : Prop :=
  C.allSmallLimits ∧ C.completenessWitness

theorem completeness_condition_closed_from_evidence (C : CompletenessConditionPackage) :
    CompletenessConditionClosed C := by
  exact And.intro C.allSmallLimitsClosed C.completenessWitnessClosed

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
