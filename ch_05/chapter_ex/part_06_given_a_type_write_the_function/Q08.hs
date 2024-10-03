-- One version will typecheck.
-- a' :: (a -> b) -> a -> b
-- a' = undefined

-- Solution:
a' :: (a -> b) -> a -> b
a' = ($)