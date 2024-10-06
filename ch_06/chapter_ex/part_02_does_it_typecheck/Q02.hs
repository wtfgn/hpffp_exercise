-- 2. Does the following typecheck? If not, why not?
data Mood
  = Blah
  | Woot
  deriving (Show)

settleDown x =
  if x == Woot
    then Blah
    else x

-- Solution:
-- No, it doesn't typecheck.
-- Because the type Mood doesn't have an instance of the typeclass Eq.
-- To fix it, we need to add an instance of the typeclass Eq to the type Mood.
instance Eq Mood where
  (==) :: Mood -> Mood -> Bool
  (==) Blah Blah = True
  (==) Woot Woot = True
  (==) _ _ = False