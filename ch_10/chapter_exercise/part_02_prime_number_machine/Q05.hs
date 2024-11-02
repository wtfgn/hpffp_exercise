-- 5. Write myMap in terms of foldr. It should have the same behavior
-- as the built-in map.
-- myMap :: (a -> b) -> [a] -> [b]
-- myMap = undefined

-- Solution
myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\a b -> f a : b) []