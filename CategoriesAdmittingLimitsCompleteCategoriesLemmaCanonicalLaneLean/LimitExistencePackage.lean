import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure LimitExistencePackage where
  smallCategory : Type u
  limitType : Type v
  limitCone : Prop
  limitUniversalProperty : Prop
  limitUnique : Prop

structure LimitExistenceEvidence (L : LimitExistencePackage) where
  limitConeClosed : L.limitCone
  limitUniversalPropertyClosed : L.limitUniversalProperty
  limitUniqueClosed : L.limitUnique

def LimitExistenceClosed (L : LimitExistencePackage) : Prop :=
  L.limitCone ∧ L.limitUniversalProperty ∧ L.limitUnique

theorem limit_existence_closed_from_evidence (L : LimitExistencePackage)
    (E : LimitExistenceEvidence L) : LimitExistenceClosed L := by
  exact And.intro E.limitConeClosed (And.intro E.limitUniversalPropertyClosed E.limitUniqueClosed)

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse