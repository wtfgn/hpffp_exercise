-- 8. squishMap maps a function over a list and concatenates the results.
-- squishMap :: (a -> [b]) -> [a] -> [b]
-- squishMap = undefined
-- Prelude> squishMap (\x -> [1, x, 3]) [2]
-- [1,2,3]
-- Prelude> squishMap (\x -> "WO " ++ [x] ++ " OT ") "blah"
-- "WO b OT WO l OT WO a OT WO h OT "


-- Solution
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\a b -> f a ++ b) []