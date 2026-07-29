import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean.SmallCategories

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure CompleteCategory (C : SmallCategory) where
  allLimitsExist : ∀ (D : DiagramShape) (F : (X : D.I.Obj) → C.Obj) (Fhom : {X Y : D.I.Obj} → D.I.Hom X Y → C.Hom (F X) (F Y)),
    ∃ (lim : C.Obj) (cone : ∀ (i : D.I.Obj), C.Hom lim (F i)),
      (∀ {i j : D.I.Obj} (f : D.I.Hom i j), C.comp (cone i) (Fhom f) = cone j) ∧
      (∀ (c : C.Obj) (cône : ∀ (i : D.I.Obj), C.Hom c (F i)),
        (∀ {i j : D.I.Obj} (f : D.I.Hom i j), C.comp (cône i) (Fhom f) = cône j) →
        ∃! u : C.Hom c lim, ∀ (i : D.I.Obj), C.comp u (cone i) = cône i)

structure CompleteCategoriesEvidence (C : SmallCategory) (comp : CompleteCategory C)
    where
  allLimitsExistClosed : comp.allLimitsExist

def CompleteCategoriesClosed (C : SmallCategory) (comp : CompleteCategory C) : Prop :=
  comp.allLimitsExist

theorem complete_categories_closed_from_evidence
    (C : SmallCategory) (comp : CompleteCategory C)
    (E : CompleteCategoriesEvidence C comp) : CompleteCategoriesClosed C comp := by
  exact E.allLimitsExistClosed

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
