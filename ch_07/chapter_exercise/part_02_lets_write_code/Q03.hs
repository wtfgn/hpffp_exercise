-- 3. Fill in the definition. Note that the first argument to our function
-- is also a function which can be applied to values. Your second
-- argument is a tuple, which can be used for pattern matching:
-- g :: (a -> b) -> (a, c) -> (b, c)
-- g = undefined

-- Solution:
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
