-- 7. One version will typecheck.
-- a :: (a -> c) -> a -> a
-- a = undefined

-- Solution:
a :: (a -> c) -> a -> a
a f x = x