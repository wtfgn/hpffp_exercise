-- 11. myMinimumBy takes a comparison function and a list and returns
-- the least element of the list based on the last value that the comparison returned LT for.
-- myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
-- myMinimumBy = undefined
-- Prelude> myMinimumBy (\_ _ -> GT) [1..10]
-- 10
-- Prelude> myMinimumBy (\_ _ -> LT) [1..10]
-- 1
-- Prelude> myMinimumBy compare [1..10]
-- 1

-- Solution
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f = foldl1 (\acc x -> if f x acc == LT then x else acc)