import Data.Char (toUpper)
-- Use as-patterns in implementing the following functions:
-- 1. This should return True if (and only if ) all the values in the first
-- list appear in the second list, though they need not be contiguous.
-- isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
-- The following are examples of how this function should work:
-- Prelude> isSubsequenceOf "blah" "blahwoot"
-- True
-- Prelude> isSubsequenceOf "blah" "wootblah"
-- True
-- Prelude> isSubsequenceOf "blah” "wboloath"
-- True
-- Prelude> isSubsequenceOf "blah" "wootbla"
-- False

-- 2. Split a sentence into words, then tuple each word with the capitalized form of each.
-- capitalizeWords :: String -> [(String, String)]
-- Prelude> capitalizeWords "hello world"
-- [("hello", "Hello"), ("world", "World")]

-- Solution:
-- 1.
isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf _ [] = False
isSubsequenceOf xss@(x:xs) (y:ys)
  | x == y = isSubsequenceOf xs ys
  | otherwise = isSubsequenceOf xss ys

-- 2.
capitalizeWords :: String -> [(String, String)]
capitalizeWords = map tupledAndCapitalised . words
  where tupledAndCapitalised word@(x:xs) = (word, toUpper x : xs)
