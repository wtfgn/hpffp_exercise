-- 6. We will continue to use the code 
-- in module Arith4 for this exercise as well.

-- When we apply show to a value such as (1 :: Int), the 𝑎 that
-- implements Show is Int, so GHC will use the Int instance of the
-- Show typeclass to stringify our Int of 1.

-- However, read expects a String argument in order to return an
-- 𝑎. The String argument that is the first argument to read tells
-- the function nothing about what type the de-stringified result
-- should be. In the type signature roundTrip currently has, it
-- knows because the type variables are the same, so the type that is
-- the input to show has to be the same type as the output of read.

-- Your task now is to change the type of roundTrip in Arith4 to
-- (Show a, Read b) => a -> b. How might we tell GHC which
-- instance of Read to dispatch against the String now? Make the
-- application of your pointfree version of roundTrip to the argument 4 on line 10 work. You will only need the has the type syntax
-- of :: and parentheses for scoping.

-- Here is the code from Arith4.hs:
module Arith4 where
-- id :: a -> a
-- id x = x
roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)
main = do
  print (roundTrip 4)
  print (id 4)

-- Solution:
roundTrip' :: (Show a, Read b) => a -> b
roundTrip' = read . show
