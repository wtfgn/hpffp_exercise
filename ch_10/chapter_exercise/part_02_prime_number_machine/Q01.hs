-- In the previous chapter, you wrote these functions using direct recursion over lists. The goal now is to rewrite them using folds. Where
-- possible, to gain a deeper understanding of folding, try rewriting the
-- fold version so that it is point-free.
-- Point-free versions of these functions written with a fold should look
-- like:
-- myFunc = foldr f z
-- So for example with the and function:

-- -- Again, this type will be less reusable than
-- -- the one in GHC 7.10 and newer. Don't worry.
-- -- direct recursion, not using (&&)
-- myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) =
-- if x == False
-- then False
-- else myAnd xs
-- -- direct recursion, using (&&)
-- myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) = x && myAnd xs
-- -- fold, not point-free in the folding function
-- myAnd :: [Bool] -> Bool
-- myAnd = foldr
-- (\a b ->
-- if a == False
-- then False
-- else b) True
-- -- fold, both myAnd and the folding function are point-free now
-- myAnd :: [Bool] -> Bool
-- myAnd = foldr (&&) True
-- The goal here is to converge on the final version where possible. You
-- don’t need to write all variations for each example, but the more
-- variations you write, the deeper your understanding of these functions
-- will become.

-- 1. myOr returns True if any Bool in the list is True.
-- myOr :: [Bool] -> Bool
-- myOr = undefined

-- Solution
myOr :: [Bool] -> Bool
myOr = foldr (||) False