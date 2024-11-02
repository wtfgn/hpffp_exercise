-- 1. Modify your fibs function to only return the first 20 Fibonacci
-- numbers.

-- 2. Modify fibs to return the Fibonacci numbers that are less than
-- 100.

-- 3. Try to write the factorial function from Recursion as a scan.
-- You’ll want scanl again, and your start value will be 1. Warning:
-- this will also generate an infinite list, so you may want to pass it
-- through a take function or similar.

fibs :: [Integer]
fibs = 1 : scanl (+) 1 fibs

-- Solution
-- 1.
take20Fibs = take 20 fibs

-- 2.
fibsLessThan100 = takeWhile (<100) fibs

-- 3.
factorialScan :: [Integer]
factorialScan = scanl (*) 1 [1..]
