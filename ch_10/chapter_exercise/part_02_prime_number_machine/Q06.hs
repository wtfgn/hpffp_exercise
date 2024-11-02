-- 6. Write myFilter in terms of foldr. It should have the same
-- behavior as the built-in filter.
-- myFilter :: (a -> Bool) -> [a] -> [a]
-- myFilter = undefined

-- Solution
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\a b -> if f a then a : b else b) []