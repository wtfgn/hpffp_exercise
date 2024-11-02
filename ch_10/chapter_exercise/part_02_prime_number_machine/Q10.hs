-- 10. myMaximumBy takes a comparison function and a list and returns
-- the greatest element of the list based on the last value that the
-- comparison returned GT for.
-- myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
-- myMaximumBy = undefined
-- Prelude> myMaximumBy (\_ _ -> GT) [1..10]
-- 1
-- Prelude> myMaximumBy (\_ _ -> LT) [1..10]
-- 10
-- Prelude> myMaximumBy compare [1..10]
-- 10

-- Solution
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f = foldl1 (\acc x -> if f x acc == GT then x else acc)