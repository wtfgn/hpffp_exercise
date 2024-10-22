-- 5. To do the final exercise in this section, we’ll need another standard 
-- function for lists called head. Query the type of head and
-- experiment with it to see what it does. Now write a function that
-- will capitalize the first letter of a String and return only that letter
-- as the result.

-- Solution:
import Data.Char

capitalizeFirst :: String -> Char
capitalizeFirst xs = toUpper $ head xs