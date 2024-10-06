-- 3. If you were able to get settleDown to typecheck:
-- a) What values are acceptable inputs to that function?
-- b) What will happen if you try to run settleDown 9? Why?
-- c) What will happen if you try to run Blah > Woot? Why?
-- data Mood
--   = Blah
--   | Woot
--   deriving (Show)

-- settleDown x =
--   if x == Woot
--     then Blah
--     else x

-- Solution:
-- a) The values Blah and Woot are acceptable inputs to that function.
-- b) If you try to run settleDown 9, you will get an error.
--    Because the type of the value 9 is not the same as the type of the values Blah and Woot.
-- c) If you try to run Blah > Woot, you will get an error.
--    Because the type Mood doesn't have an instance of the typeclass Ord.