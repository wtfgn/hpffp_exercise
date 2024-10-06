-- Given the following datatype definitions:
data Rocks
  = Rocks String
  deriving (Eq, Show)

data Yeah
  = Yeah Bool
  deriving (Eq, Show)

data Papu
  = Papu Rocks Yeah
  deriving (Eq, Show)

-- Which of the following will typecheck? For the ones that don’t typecheck, why don’t they?
-- 1. phew = Papu "chases" True

-- Solution:
-- No, it doesn't typecheck.
-- Because "chases" is a value of type String, but the type Rocks expects a value of type String.
-- Also, True is a value of type Bool, but the type Yeah expects a value of type Bool.
