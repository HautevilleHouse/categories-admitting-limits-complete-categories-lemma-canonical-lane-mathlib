import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  completeStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "CategoriesAdmittingLimitsCompleteCategoriesLemma",
  theoremName := "CategoriesAdmittingLimitsCompleteCategoriesLemma",
  theoremObject := "Categories that admit limits are complete",
  classicalBoundary := "Full completeness requires set-theoretic foundations",
  completeStatement := "Every small category that has all limits is complete",
  certificateLane := "complete_constrained",
  carriedRemainder := "The unrestricted classical completeness statement is carried"
}

end CategoriesAdmittingLimitsCompleteCategoriesLemmaCanonicalLaneLean
end HautevilleHouse