-- For each set of expressions, figure out which expression, if any, causes
-- the compiler to squawk at you (n.b. we do not mean literal squawking)
-- and why. Fix it if you can.

-- 1. bigNum = (^) 5 $ 10
-- wahoo = bigNum $ 10

-- Solution:
-- Recall that the the associativity of ($) is:
-- infixr 0 $
-- meaning that it has the lowest precedence. So, we have:
-- bigNum = ((^) 5) $ 10
-- Then 5 is applied to the (^) function, which is then applied to 10.
-- It turns out we the value of bigNum is 9765625, which is an Integer.

-- Also, recall that the type of ($) is:
-- ($) :: (a -> b) -> a -> b
-- which means that the first argument to ($) is a function
-- that takes an argument of type a and returns a value of type b.
-- However, in the expression wahoo = bigNum $ 10, bigNum is not a function,
-- instead it is a value of type Integer.
-- So, the compiler will squawk at you.

-- To fix it, we can change the ($) operator to any other operator
-- which has the type f :: Num a => a -> a -> b, such as (+) or (*).