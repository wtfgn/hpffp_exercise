{-# LANGUAGE GeneralizedNewtypeDeriving #-}
class TooMany a where
  tooMany :: a -> Bool
  
instance TooMany Int where
  tooMany n = n > 42
  
newtype Goats = 
  Goats Int
  deriving (Eq, Show, TooMany)
  
-- Ages ago, you have to enable the language extension
-- "flexible instances", in order to mention the
-- arbitrary nested types in the head of the instance
-- declaration, but it has been automatically enabled now


-- 1. Reusing the TooMany typeclass, write an instance of the typeclass
-- for the type (Int, String). This will require adding a language
-- pragma named FlexibleInstances4
-- if you do not use a newtype —
-- GHC will tell you what to do.
instance TooMany (Int, String) where
  tooMany (x, _) = x > 42
  
-- 2. Make another TooMany instance for (Int, Int).
-- Sum the values together under the assumption
-- this is a count of goats from two fields.
instance TooMany (Int, Int) where
  tooMany (x, y) = (x + y) > 42
  
-- 3. Make another TooMany instance,
-- this time for (Num a, TooMany a) => (a, a).
-- This can mean whatever you want,
-- such as summing the two numbers together.
instance (Num a, TooMany a) => TooMany (a, a) where
  tooMany (x, y) = tooMany (x + y)
