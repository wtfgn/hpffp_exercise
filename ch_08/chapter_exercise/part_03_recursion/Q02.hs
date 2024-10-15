-- 2. Write a function that recursively sums all numbers from 1 to n,
-- n being the argument. So that if n was 5, you’d add 1 + 2 + 3 + 4 +
-- 5 to get 15. The type should be (Eq a, Num a) => a -> a.

-- Solution
sumAll :: (Eq a, Num a) => a -> a
sumAll 0 = 0
sumAll n = n + sumAll (n - 1)