-- 2. 
-- a) 
-- f :: Float
-- f = 1.0

-- b) 
-- f :: Num a => a

-- Solution:
-- No. Because the most general type of 1.0 is Fractional a => a, not Num a => a.
-- If f :: Num a => a, then f can be any value of type Num a, not just Fractional a.