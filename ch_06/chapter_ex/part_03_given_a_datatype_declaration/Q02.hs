data Rocks
  = Rocks String
  deriving (Eq, Show)

data Yeah
  = Yeah Bool
  deriving (Eq, Show)

data Papu
  = Papu Rocks Yeah
  deriving (Eq, Show)

-- 2. truth = Papu (Rocks "chomskydoz") (Yeah True)

-- Solution:
-- Yes, it typechecks.