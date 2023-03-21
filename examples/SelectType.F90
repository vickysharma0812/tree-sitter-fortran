PROGRAM main
USE easifemBase
USE easifemClasses
IMPLICIT NONE

CLASS(AbstractField_), POINTER :: obj

SELECT TYPE (obj)
CLASS IS (AbstractNodeField_)
  IF (PRESENT(tSize)) obj%tSize = tSize
  IF (PRESENT(realVec)) obj%realVec = realVec
  IF (PRESENT(dof)) obj%dof = dof
CLASS IS (AbstractMatrixField_)
  IF (PRESENT(isPMatInitiated)) obj%isPMatInitiated = isPMatInitiated
END SELECT
END PROGRAM main
