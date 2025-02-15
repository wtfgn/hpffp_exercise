-- module WordNumber where
-- import Data.List (intersperse)
-- digitToWord :: Int -> String
-- digitToWord n = undefined
-- digits :: Int -> [Int]
-- digits n = undefined
-- wordNumber :: Int -> String
-- wordNumber n = undefined
-- Here undefined is a placeholder to show you where you need to fill in
-- the functions. The n to the right of the function names is the argument
-- which will be an integer.
-- Fill in the implementations of the functions above so that wordNumber
-- returns the English word version of the Int value. You will first write a
-- function that turns integers from 1-9 into their corresponding English
-- words, ”one,” ”two,” and so on. Then you will write a function that
-- takes the integer, separates the digits, and returns it as a list of integers.
-- Finally you will need to apply the first function to the list produced by
-- the second function and turn it into a single string with interspersed
-- hyphens.
-- We’ve laid out multiple functions for you to consider as you tackle
-- the problem. You may not need all of them, depending on how you
-- solve it–these are just suggestions. Play with them and look up their
-- documentation to understand them in deeper detail.
-- You will probably find this difficult.
-- div :: Integral a => a -> a -> a
-- mod :: Integral a => a -> a -> a
-- map :: (a -> b) -> [a] -> [b]
-- concat :: [[a]] -> [a]
-- intersperse :: a -> [a] -> [a]
-- (++) :: [a] -> [a] -> [a]
-- (:[]) :: a -> [a]
-- Also consider:
-- Prelude> div 135 10
-- 13
-- Prelude> mod 135 10
-- 5
-- Prelude> div 13 10
-- 1
-- Prelude> mod 13 10
-- 3
-- Here is what your output should look in the REPL when it’s working:
-- Prelude> wordNumber 12324546
-- "one-two-three-two-four-five-four-six"
-- Prelude>

-- Solution:
import Data.List (intercalate)

digitToWord :: Int -> String
digitToWord n
  | n == 0 = "zero"
  | n == 1 = "one"
  | n == 2 = "two"
  | n == 3 = "three"
  | n == 4 = "four"
  | n == 5 = "five"
  | n == 6 = "six"
  | n == 7 = "seven"
  | n == 8 = "eight"
  | n == 9 = "nine"
  | otherwise = error "Invalid digit"

digits :: Int -> [Int]
digits n = go n []
  where
    go n acc
      | n < 10 = n : acc
      | otherwise = go (n `div` 10) ((n `mod` 10) : acc)

wordNumber :: Int -> String
wordNumber n =  intercalate "-" (map digitToWord $ digits n)
