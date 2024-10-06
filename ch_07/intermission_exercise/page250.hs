-- 1. It is probably clear to you why you wouldn’t put an otherwise
-- in your top-most guard, but try it with avgGrade anyway and
-- see what happens. It’ll be more clear if you rewrite it as an actual
-- otherwise match: | otherwise = 'F'. What happens now if
-- you pass a 90 as an argument? 75? 60?

-- 2. What happens if you take avgGrade as it is written and reorder
-- the guards? Does it still typecheck and work the same? Try moving | y >= 0.7 = 'C' and passing it the argument 90, which
-- should be an ‘A.’ Does it return an ‘A’?

-- 3. The following function returns
-- pal xs

-- | xs == reverse xs = True
-- | otherwise = False
-- a) xs written backwards when it’s True
-- b) True when xs is a palindrome
-- c) False when xs is a palindrome
-- d) False when xs is reversed

-- 4. What types of arguments can pal take?

-- 5. What is the type of the function pal?

-- 6. The following function returns
-- numbers x

-- | x < 0 = -1
-- | x == 0 = 0
-- | x > 0 = 1
-- a) the value of its argument plus or minus 1
-- b) the negation of its argument
-- c) an indication of whether its argument is a positive or negative number or zero
-- d) binary machine language

-- 7. What types of arguments can numbers take?

-- 8. What is the type of the function numbers?

-- Solution:
-- 1.
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9 = 'A'
  | y >= 0.8 = 'B'
  | y >= 0.7 = 'C'
  | y >= 0.59 = 'D'
  | otherwise = 'F'
  where
    y = x / 100

-- 2.
-- If we move it to the top, any number greater than 0.7 will return 'C'.
-- so avgGrade 90 will return 'C', not 'A'.

-- 3. 
-- b) True when xs is a palindrome

-- 4.
-- A list of elements of the same type 
-- and that type must be an instance of Eq.

-- 5.
-- pal :: Eq a => [a] -> Bool

-- 6.
-- c) an indication of whether its argument is a positive or negative number or zero

-- 7.
-- Any type that is an instance of Ord and Num.

-- 8.
-- numbers :: (Ord a, Num a) => a -> a