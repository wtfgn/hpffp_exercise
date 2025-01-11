-- 1. Given a datatype
data BigSmall =
    Big Bool
  | Small Bool
  deriving (Eq, Show)
-- What is the cardinality of this datatype? Hint: We already know
-- Bool’s cardinality. Show your work as demonstrated earlier
-- Sol: 2 + 2 = 4

-- 2. Given a datatype
-- needed to have Int8 in scope
-- import Data.Int
-- data NumberOrBool =
--     Numba Int8
--   | BoolyBool Bool
--   deriving (Eq, Show)
-- Example use of Numba, parentheses due to
-- syntactic collision between (-) minus and
-- the negate function
-- let myNumba = Numba (-128)
-- What is the cardinality of NumberOrBool?
-- Sol: 2^8 + 2
-- What happens if you try to create a Numba
-- with a numeric literal larger than 127?
-- And with a numeric literal smaller than (-128)?
-- Sol: For a numeric literal larger than 127
--      you will get a warning, since it exceeds
--      the upper bound of the data type Int8
--      Same for (<-128)
