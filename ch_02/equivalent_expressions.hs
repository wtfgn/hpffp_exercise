-- Which of the following expressions are equivalent?

-- 1. 1 + 1
-- 2
-- Yes, they are equivalent.

-- 2. 10 ^ 2
-- 10 + 9 * 10
-- Yes, they are equivalent.

-- 3. 400 - 37
-- (-) 37 400
-- No, they are not equivalent. Because (-) 37 400 is equivalent to 37 - 400.

-- 4. 100 `div` 3
-- 100 / 3
-- No, they are not equivalent.
-- Recall that `div` is integer division, while / is floating-point division.
-- div :: Integral a => a -> a -> a
-- (/) :: Fractional a => a -> a -> a

-- 5. 2 * 5 + 18
-- 2 * (5 + 18)
-- No, they are not equivalent. Because 2 * (5 + 18) = 2 * 23 = 46,
-- while 2 * 5 + 18 = 10 + 18 = 28.