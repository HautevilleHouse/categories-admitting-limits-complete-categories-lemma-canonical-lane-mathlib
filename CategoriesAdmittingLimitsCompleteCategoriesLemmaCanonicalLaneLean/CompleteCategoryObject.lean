import canonicalLaneMathlib.CompleteCategoryPackage

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CompleteCategoryObject where
  category : CompleteCategoryPackage
  allLimitsConstructed : Prop
  limitClosureProof : Prop
  conclusion : limitClosureProof

def LimitClosure (O : CompleteCategoryObject) : Prop :=
  O.limitClosureProof

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse