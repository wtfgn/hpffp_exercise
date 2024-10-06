-- 1. Which (two or more) of the following are equivalent?
-- a) mTh x y z = x * y * z
-- b) mTh x y = \z -> x * y * z
-- c) mTh x = \y -> \z -> x * y * z
-- d) mTh = \x -> \y -> \z -> x * y * z

-- 2. The type of mTh (above) is Num a => a -> a -> a -> a.
-- Which is the type of mTh 3?
-- a) Integer -> Integer -> Integer
-- b) Num a => a -> a -> a -> a
-- c) Num a => a -> a
-- d) Num a => a -> a -> a

-- 3. Next, we’ll practice writing anonymous lambda syntax.
-- For example, one could rewrite:
-- addOne x = x + 1
-- Into:
-- addOne = \x -> x + 1
-- Try to make it so it can still be loaded as a top-level definition by
-- GHCi. This will make it easier to validate your answers.
-- a) Rewrite the f function in the where clause.
-- addOneIfOdd n = case odd n of
-- True -> f n
-- False -> n
-- where f n = n + 1
-- b) Rewrite the following to use anonymous lambda syntax:
-- addFive x y = (if x > y then y else x) + 5
-- c) Rewrite the following so that it doesn’t use anonymous
-- lambda syntax:
-- mflip f = \x -> \y -> f y x

-- Solution:
-- 1. They are all equivalent.

-- 2. d) Num a => a -> a -> a
-- Not a) Integer -> Integer -> Integer,
-- 3 is of type Num a => a.
-- If you do this in GHCi:
-- :t mTh (3 :: Integer)
-- you will have: mTh (3 :: Integer) :: Integer -> Integer -> Integer

-- 3.
-- a)
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where
    f = \n -> n + 1

-- b)
addFive = \x y -> (if x > y then y else x) + 5

-- c)
mflip f x y = f y x