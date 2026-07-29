import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  objects : Type v
  morphisms : Type w
  identityMorphism : ∀ (X : objects), morphisms
  composition : morphisms → morphisms → morphisms
  unitLaws : Prop
  associativityLaw : Prop
  unitLawsClosed : unitLaws
  associativityLawClosed : associativityLaw

structure CompleteCategoryObject where
  category : CategoryObject
  allLimitsExist : Prop
  limitConstruction : Type x
  allLimitsExistClosed : allLimitsExist
  limitConstructionWitness : limitConstruction

def CompleteCategoryWitnessClosed (O : CompleteCategoryObject) : Prop :=
  O.allLimitsExist

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
