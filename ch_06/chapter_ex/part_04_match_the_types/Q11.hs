import Data.List (sort)

-- 11. 
-- a) 
mySort :: [Char] -> [Char]
mySort = sort
-- signifier :: [Char] -> Char
-- signifier xs = head (mySort xs)

-- b) signifier :: Ord a => [a] -> a

-- Solution:
-- Cannot, because mySort is [Char] -> [Char], so signifier must be [Char] -> Char.
