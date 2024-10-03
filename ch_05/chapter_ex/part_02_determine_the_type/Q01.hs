-- For the following functions, determine the type of the specified value.
-- Note: you can type them into a file and load the contents of the file in
-- GHCi. You can then query the types after you’ve loaded them.
-- 1. All function applications return a value. Determine the value
-- returned by these function applications and the type of that
-- value.

-- a)
a = (* 9) 6

-- b)
b = head [(0,"doge"),(1,"kitteh")]

-- c)
c = head [(0 :: Integer ,"doge"),(1,"kitteh")]

-- d)
d = if False then True else False

-- e)
e :: Int
e = length [1, 2, 3, 4, 5]

-- f)
f :: Bool
f = (length [1, 2, 3, 4]) > (length "TACOCAT")



-- Solution:
-- a)
-- a :: Integer

-- b)
-- b :: (Integer, String)

-- c)
-- c :: (Integer, String)

-- d)
-- d :: Bool

-- e)
-- e :: Int

-- f)
-- f :: Bool
