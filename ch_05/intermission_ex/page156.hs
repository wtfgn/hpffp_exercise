-- All you can really do with a parametrically polymorphic value is pass
-- or not pass it to some other expression. Prove that to yourself with
-- these small demonstrations.

-- 1. Given the type a -> a, which is the type for id, attempt to make
-- a function that is not bottom and terminates successfully that
-- does something other than returning the same value. This is
-- impossible, but you should try it anyway.

-- 2. We can get a more comfortable appreciation of parametricity
-- by looking at a -> a -> a. This hypothetical function a -> a
-- -> a has two–and only two–implementations. Write both possible versions of a -> a -> a. After doing so, try to violate the
-- constraints of parametrically polymorphic values we outlined
-- above.

-- 3. Implement a -> b -> b. How many implementations can it
-- have? Does the behavior change when the types of 𝑎 and 𝑏
-- change?

-- Solution:
-- 1. Try as you might, you can’t make a function of type a -> a 
-- that does anything other than return the same value.

-- 2. There are only two possible implementations of a -> a -> a:
f :: a -> a -> a
f x y = x

g :: a -> a -> a
g x y = y

-- 3. There is only one implementation of a -> b -> b:
h :: a -> b -> b
h x y = y