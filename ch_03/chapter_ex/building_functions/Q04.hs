-- 4. Now change that function so the string input is always the same
-- and the variable represents the number of the letter you want to
-- return (you can use “Curry is awesome!” as your string input or
-- a different string if you prefer).
-- letterIndex :: Int -> Char
-- letterIndex x =

-- Solution:
letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x