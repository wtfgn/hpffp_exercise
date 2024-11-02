-- 4. Implement myReverse, don’t worry about trying to make it lazy.
-- myReverse :: [a] -> [a]
-- myReverse = undefined
-- Prelude> myReverse "blah"
-- "halb"
-- Prelude> myReverse [1..5]
-- [5,4,3,2,1]

-- Solution
myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []