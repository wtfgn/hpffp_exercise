import Data.List (sort)
-- 9. 
-- a) You’ll need to import sort from Data.List.
-- jung :: Ord a => [a] -> a
-- jung xs = head (sort xs)

-- b) 
-- jung :: [Int] -> Int

-- Solution:
-- Cannot, for some value to be sorted, it has to be an instance of Ord.