import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure SmallCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_comp : {X Y : Obj} (f : Hom X Y) → comp (id X) f = f
  comp_id : {X Y : Obj} (f : Hom X Y) → comp f (id Y) = f
  assoc : {X Y Z W : Obj} (f : Hom X Y) (g : Hom Y Z) (h : Hom Z W) → comp (comp f g) h = comp f (comp g h)

structure DiagramShape where
  I : SmallCategory
  J : SmallCategory
  functor : (X : I.Obj) → J.Obj
  functorHom : {X Y : I.Obj} → I.Hom X Y → J.Hom (functor X) (functor Y)
  functor_id : ∀ (X : I.Obj), functorHom (I.id X) = J.id (functor X)
  functor_comp : ∀ {X Y Z : I.Obj} (f : I.Hom X Y) (g : I.Hom Y Z), functorHom (I.comp f g) = J.comp (functorHom f) (functorHom g)

structure LimitCone (D : DiagramShape) (X : D.J.Obj) where
  cone : (Y : D.J.Obj) → D.J.Hom X Y
  cone_id : cone X = D.J.id X
  cone_comp : ∀ {Y Z : D.J.Obj} (f : D.J.Hom Y Z), D.J.comp (cone Y) f = cone Z

structure LimitExists where
  D : DiagramShape
  limitObject : D.J.Obj
  limitCone : LimitCone D limitObject
  isUniversal : ∀ (X : D.J.Obj) (c : LimitCone D X), ∃! f : D.J.Hom X limitObject, ∀ (Y : D.J.Obj), D.J.comp f (limitCone.cone Y) = c.cone Y

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse
