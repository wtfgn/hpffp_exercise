-- 2. -- Hint: use some arithmetic operation to
-- -- combine values of type 'b'. Pick one.
-- arith :: Num b => (a -> b) -> Integer -> a -> b
-- arith = ???

-- Solution:
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f i a = result
  where 
    b = f a
    result = b + fromInteger i

-- The trict part of this exercise is to convert
--  the Integer to a value of type b which is an instance of Num.