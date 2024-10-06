data Rocks
  = Rocks String
  deriving (Eq, Show)

data Yeah
  = Yeah Bool
  deriving (Eq, Show)

data Papu
  = Papu Rocks Yeah
  deriving (Eq, Show)

-- 3. equalityForall :: Papu -> Papu -> Bool
--    equalityForall p p' = p == p'

-- Solution:
-- Yes, it typechecks.