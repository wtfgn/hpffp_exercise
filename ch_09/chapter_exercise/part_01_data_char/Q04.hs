-- 4. Now make a new version of that function that is recursive such
-- that if you give it the input “woot” it will holler back at you
-- “WOOT.” The type signature won’t change, but you will want to
-- add a base case.


-- Solution:
import Data.Char

capitalize' :: String -> String
capitalize' [] = []
capitalize' (x:xs) = toUpper x : capitalize' xs