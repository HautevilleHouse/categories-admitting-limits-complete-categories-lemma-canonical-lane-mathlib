import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure LimitsPackage where
  smallLimits : Prop
  smallColimits : Prop
  completeness : Prop
  cocompleteness : Prop

structure LimitsEvidence (L : LimitsPackage) where
  smallLimitsClosed : L.smallLimits
  smallColimitsClosed : L.smallColimits
  completenessClosed : L.completeness
  cocompletenessClosed : L.cocompleteness

def LimitsClosed (L : LimitsPackage) : Prop :=
  L.smallLimits ∧ L.smallColimits ∧ L.completeness ∧ L.cocompleteness

theorem limits_closed_from_evidence (L : LimitsPackage) (E : LimitsEvidence L) :
    LimitsClosed L := by
  exact And.intro E.smallLimitsClosed
    (And.intro E.smallColimitsClosed
      (And.intro E.completenessClosed E.cocompletenessClosed))

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse