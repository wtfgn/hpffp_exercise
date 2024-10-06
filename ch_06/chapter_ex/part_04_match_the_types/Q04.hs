-- 4. Hint for the following: type :info RealFrac in your REPL.
-- a) 
-- f :: Float
-- f :: RealFrac a => a
-- f = 1.0

-- b) 
-- f :: RealFrac a => a

-- Solution:
-- By running :info RealFrac in the REPL, we can see that RealFrac is a subclass of both Real and Fractional.
-- class (Real a, Fractional a) => RealFrac a where
--   properFraction :: Integral b => a -> (b, a)
--   truncate :: Integral b => a -> b
--   round :: Integral b => a -> b
--   ceiling :: Integral b => a -> b
--   floor :: Integral b => a -> b

-- Since Float is an instance of both Real and Fractional, it is also an instance of RealFrac.
-- OK