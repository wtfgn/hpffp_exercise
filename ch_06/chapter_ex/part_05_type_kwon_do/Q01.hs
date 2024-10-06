-- Round Two! Same rules apply — you’re trying to fill in terms (code)
-- which’ll fit the type. The idea with these exercises is that you’ll derive
-- the implementation from the type information. You’ll probably need
-- to use stuff from Prelude.

-- 1. 
-- chk :: Eq b => (a -> b) -> a -> b -> Bool
-- chk = ???

-- Solution:
-- By looking at the type signature of the function chk, 
-- we can see that it takes three arguments:
-- 1. a function that takes an argument of type a and returns a value of type b
-- 2. a value of type a
-- 3. a value of type b
-- The function chk returns a value of type Bool.
-- So we can guess that the function chk take a value of type a 
-- and apply it to a function that convert the value of type a to a value of type b.
-- Then compare the result of the function with the value of type b with the 
-- third argument of the function chk.
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f a b = f a == b