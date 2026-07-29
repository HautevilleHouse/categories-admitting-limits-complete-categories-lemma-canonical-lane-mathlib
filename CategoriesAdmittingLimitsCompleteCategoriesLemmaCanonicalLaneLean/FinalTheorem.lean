import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean.LimitLemma

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

def ConstrainedLimitsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_limits_endgame (A : AdmissibleClass) :
    ConstrainedLimitsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
