-- 9. squishAgain flattens a list of lists into a list. This time re-use
-- the squishMap function.
-- squishAgain :: [[a]] -> [a]
-- squishAgain = undefined


-- Solution
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\a b -> f a ++ b) []

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id