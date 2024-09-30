-- 1. Given the list-manipulation functions mentioned in this chapter,
-- write functions that take the following inputs and return the
-- expected outputs. Do them directly in your REPL and use the
-- take and drop functions you’ve already seen.

-- Example
-- -- If you apply your function to this value:
-- "Hello World"
-- -- Your function should return:
-- "ello World"
-- The following would be a fine solution:
-- Prelude> drop 1 "Hello World"
-- "ello World"

-- Now write expressions to perform the following transformations,
-- just with the functions you’ve seen in this chapter. You do not
-- need to do anything clever here.

-- a) -- Given
-- "Curry is awesome"
-- -- Return
-- "Curry is awesome!"

-- b) -- Given
-- "Curry is awesome!"
-- -- Return
-- "y"

-- c) -- Given
-- "Curry is awesome!"
-- -- Return
-- "awesome!"

-- Solution:
-- a) "Curry is awesome" ++ "!"	
-- b) take 1 (drop 4 "Curry is awesome!") (cannot use !!, since it reutnr a char)
-- c) drop 9 "Curry is awesome!"