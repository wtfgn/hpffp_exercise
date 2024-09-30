-- In the following examples, you’ll be shown syntactically incorrect
-- code. Type it in and try to correct it in your text editor, validating it
-- with GHC or GHCi.
-- 1. Here, we want a function that adds 1 to the length of a string
-- argument and returns that result.
-- x = (+)
-- F xs = w 'x' 1
--   where w = length xs

-- Solution:
x = (+)
f xs = x w 1
  where w =length xs

-- or you can write in infix form:
-- f xs = w `x` 1
