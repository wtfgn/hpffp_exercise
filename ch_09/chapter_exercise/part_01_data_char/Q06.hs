-- 6. Cool. Good work. Now rewrite it as a composed function. Then,
-- for fun, rewrite it pointfree.

-- Solution:
import Data.Char

capitalizeFirst :: String -> Char
capitalizeFirst = toUpper . head