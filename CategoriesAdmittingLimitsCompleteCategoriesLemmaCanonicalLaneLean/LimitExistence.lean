import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure LimitExistenceProof (A : AdmissibleClass) where
  diagramCategory : Type u
  limitObject : Type v
  coneCondition : Prop
  universality : Prop
  existenceProof : coneCondition ∧ universality

def LimitExistenceClosed (A : AdmissibleClass) : Prop :=
  LimitExistenceProof A → bridgeClosed A

theorem limit_existence_from_proof (A : AdmissibleClass) (L : LimitExistenceProof A) :
    LimitExistenceClosed A :=
  λ _ => bridge_from_admissible_class A

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse