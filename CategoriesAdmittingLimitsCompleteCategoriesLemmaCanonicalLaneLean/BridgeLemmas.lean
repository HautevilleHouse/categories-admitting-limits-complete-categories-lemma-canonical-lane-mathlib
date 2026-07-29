import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LimitAdmittingCategory A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.limitAdmitted

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse