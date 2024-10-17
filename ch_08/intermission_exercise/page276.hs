-- Write out the evaluation of the following. It might be a little less noisy
-- if you do so with the form that didn’t use (.).
-- applyTimes 5 (+1) 5

-- Solution:
-- Given the definition of applyTimes,
applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n-1) f $ b
-- This is equivalent to:
-- applyTimes n f b = (f . (applyTimes (n-1) f)) $ b
-- Function application has the highest precedence, so we evaluate the rightmost function application first.
-- Function composition has the second highest precedence, so we evaluate the function composition next.
-- ($ b) has the lowest precedence, so we evaluate it last.


-- we can evaluate the following:
main :: IO ()
main = do
  print $ applyTimes 5 (+1) 5

-- First we evaluate applyTimes 5 (+1) 5:
-- The first argument is 5, which is not 0, so we evaluate the second case:
-- (+1) . applyTimes 4 (+1) $ 5
-- The first argument is 4, which is not 0, so we evaluate the second case:
-- (+1) . (+1) . applyTimes 3 (+1) $ 5
-- The first argument is 3, which is not 0, so we evaluate the second case:
-- (+1) . (+1) . (+1) . applyTimes 2 (+1) $ 5
-- The first argument is 2, which is not 0, so we evaluate the second case:
-- (+1) . (+1) . (+1) . (+1) . applyTimes 1 (+1) $ 5
-- The first argument is 1, which is not 0, so we evaluate the second case:
-- (+1) . (+1) . (+1) . (+1) . (+1) . applyTimes 0 (+1) $ 5
-- The first argument is 0, so we evaluate the first case:
-- 5
-- We substitute this back into the previous expressions:
-- (+1) . (+1) . (+1) . (+1) . (+1) $ 5
-- Due to the precedence of function composition, 
-- the right hand side of the ($) operator is evaluated first:
-- \x -> (+1) ((+1) ((+1) ((+1) ((+1) x)))) $ 5
-- We substitute 5 for x:
-- (+1) ((+1) ((+1) ((+1) ((+1) 5))))
-- We evaluate the innermost expression first:
-- (+1) ((+1) ((+1) ((+1) 6)))
-- (+1) ((+1) ((+1) 7))
-- (+1) ((+1) 8)
-- (+1) 9
-- 10 