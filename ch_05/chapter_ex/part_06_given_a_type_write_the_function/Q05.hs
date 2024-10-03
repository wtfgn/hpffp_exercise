-- 5. There are multiple possibilities, at least two of which you’ve seen
-- in previous chapters.
-- r :: [a] -> [a]
-- r = undefined

-- Solution:
r :: [a] -> [a]
r x = x
-- or
-- r x = take 1 x
-- or any other function that returns a list of the same type as the input list
