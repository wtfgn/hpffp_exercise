-- 2. Given the following behaviors, which would we use to write
-- a function that filters all the uppercase letters out of a String?
-- Write that function such that, given the input “HbEfLrLxO,” your
-- function will return “HELLO.”
-- Prelude Data.Char> isUpper 'J'
-- True
-- Prelude Data.Char> toUpper 'j'
-- 'J'

import Data.Char

-- Solution:
filterUppercase :: String -> String
filterUppercase = filter isUpper