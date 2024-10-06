-- 3. A function f has the type Ord a => a -> a -> Bool and we
-- apply it to one numeric value. What is the type now?
-- a) Ord a => a -> Bool
-- b) Num -> Num -> Bool
-- c) Ord a => a -> a -> Integer
-- d) (Ord a, Num a) => a -> Bool

-- Solution:
-- d) (Ord a, Num a) => a -> Bool