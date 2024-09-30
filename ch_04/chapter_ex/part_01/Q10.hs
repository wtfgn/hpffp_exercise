-- 10. Fill in the definition of the following function, using fst and snd:
-- f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f = undefined

-- Solution:
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))
-- if you use pattern matching, it would be much more readable:
-- f (a, b) (c, d) = ((b, d), (a, c))