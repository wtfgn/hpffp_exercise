-- 1. The following function returns the tens digit of an integral argument.
tensDigit :: Integral a => a -> a
tensDigit x = d
  where 
    xLast = x `div` 10
    d = xLast `mod` 10

-- d = xLast `mod` 10

-- a) First, rewrite it using divMod.

-- b) Does the divMod version have the same type as the original
-- version?

-- c) Next, let’s change it so that we’re getting the hundreds digit
-- instead. You could start it like this (though that may not be
-- the only possibility):
-- hunsD x = d2
-- where d = undefined
-- ...

-- Solution:
-- a)
tenDigit x = d
  where
    (xLast, _) = x `divMod` 10
    d = xLast `mod` 10

-- b) Yes, it has the same type as the original version.

-- c)
hunsD x = d2
  where 
    xLast = x `div` 100
    d2 = xLast `mod` 10