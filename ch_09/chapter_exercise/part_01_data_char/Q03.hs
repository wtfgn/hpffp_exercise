-- 3. Write a function that will capitalize the first letter of a String
-- and return the entire String. For example, if given the argument
-- “julie,” it will return “Julie.”

-- Solution:
import Data.Char

capitalize :: String -> String
capitalize [] = []
capitalize (x:xs) = toUpper x : xs