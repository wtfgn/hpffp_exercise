-- 6. Only one version that will typecheck.
-- co :: (b -> c) -> (a -> b) -> (a -> c)
-- co = undefined

co :: (b -> c) -> (a -> b) -> (a -> c)
co f g x = f (g x)