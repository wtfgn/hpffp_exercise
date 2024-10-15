-- 3. Write a function that multiplies two integral numbers using
-- recursive summation. The type should be (Integral a) => a
-- -> a -> a.

-- Solution
mult :: (Integral a) => a -> a -> a
mult _ 0 = 0
mult 0 _ = 0
mult base multiplier = base + mult  base (multiplier - 1)