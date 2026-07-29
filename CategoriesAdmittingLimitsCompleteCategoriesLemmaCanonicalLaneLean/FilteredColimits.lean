import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure FilteredColimitsPackage where
  filteredColimitsExist : Prop
  filteredColimitsCommuteWithFiniteLimits : Prop
  finitelyPresentableObjects : Prop

def FilteredColimitsEvidence (F : FilteredColimitsPackage) where
  filteredColimitsExistClosed : F.filteredColimitsExist
  filteredColimitsCommuteWithFiniteLimitsClosed : F.filteredColimitsCommuteWithFiniteLimits
  finitelyPresentableObjectsClosed : F.finitelyPresentableObjects

def FilteredColimitsClosed (F : FilteredColimitsPackage) : Prop :=
  F.filteredColimitsExist ∧ F.filteredColimitsCommuteWithFiniteLimits ∧
  F.finitelyPresentableObjects

theorem filtered_colimits_closed_from_evidence
    (F : FilteredColimitsPackage) (E : FilteredColimitsEvidence F) :
    FilteredColimitsClosed F := by
  exact And.intro E.filteredColimitsExistClosed
    (And.intro E.filteredColimitsCommuteWithFiniteLimitsClosed
      E.finitelyPresentableObjectsClosed)

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse