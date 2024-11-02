-- 2. What does the following mystery function do? What is its type?
-- Try to get a good sense of what it does before you test it in the
-- REPL to verify it.
seekritFunc x =
  div
    (sum (map length (words x)))
    (length (words x))

-- Solution
-- This function calculates the average word length of a string.