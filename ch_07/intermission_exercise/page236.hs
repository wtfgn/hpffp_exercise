-- 1. Given the following declarations
-- k (x, y) = x
-- k1 = k ((4-1), 10)
-- k2 = k ("three", (1 + 2))
-- k3 = k (3, True)
-- a) What is the type of k?
-- b) What is the type of k2? Is it the same type as k1 or k3?
-- c) Of k1, k2, k3, which will return the number 3 as the result?

-- 2. Fill in the definition of the following function:
-- -- Remember: Tuples have the same syntax for their
-- -- type constructors and their data constructors.
-- f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
-- f = undefined

-- Solution:
-- 1. 
-- a) k :: (a, b) -> a
-- b) k2 :: [Char]
-- c) k1 and k3 will return the number 3 as the result.

-- 2.
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f) = ((a, d), (c, f))