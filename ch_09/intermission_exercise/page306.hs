-- Given the following:
-- Prelude> let mySqr = [x^2 | x <- [1..5]]
-- Prelude> let myCube = [y^3 | y <- [1..5]]
-- 1. First write an expression that will make tuples of the outputs of
-- mySqr and myCube.
-- 2. Now alter that function so that it only uses the x and y values
-- that are less than 50.
-- 3. Now apply another function to that list comprehension to determine how many tuples inhabit your output list.

-- Solution:
mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- 1.
tuples = [(x, y) | x <- mySqr, y <- myCube]

-- 2.
tuples' = [(x, y) | x <- mySqr, x < 50, y <- myCube, y < 50]

-- 3.
lengthTuples = length tuples'