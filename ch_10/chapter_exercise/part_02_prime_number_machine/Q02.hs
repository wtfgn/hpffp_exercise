-- 2. myAny returns True if a -> Bool applied to any of the values in
-- the list returns True.
-- myAny :: (a -> Bool) -> [a] -> Bool
-- myAny = undefined
-- Example for validating myAny:
-- Prelude> myAny even [1, 3, 5]
-- False
-- Prelude> myAny odd [1, 3, 5]
-- True

-- Solution
myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\a b -> f a || b) False