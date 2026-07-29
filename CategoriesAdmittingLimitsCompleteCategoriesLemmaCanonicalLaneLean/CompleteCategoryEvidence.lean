import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CompleteCategoryEvidence (C : AdmissibleClass) where
  smallLimitsClosed : Type (max u v)
  limitConstruction : Prop
  limitUniqueness : Prop
  limitClosedEvidence : limitConstruction ∧ limitUniqueness

def CompleteCategoryClosure (C : AdmissibleClass) : Prop :=
  CompleteCategoryEvidence C → bridgeClosed C

theorem complete_category_closure_holds (C : AdmissibleClass) (E : CompleteCategoryEvidence C) :
    CompleteCategoryClosure C :=
  λ _ => bridge_from_admissible_class C

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse