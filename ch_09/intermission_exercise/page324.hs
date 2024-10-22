-- 1. Write your own version of zip :: [a] -> [b] -> [(a, b)]
-- and ensure it behaves the same as the original.

-- 2. Do what you did for zip, but now for zipWith :: (a -> b ->
-- c) -> [a] -> [b] -> [c]

-- 3. Rewrite your zip in terms of the zipWith you wrote.

-- Solution:
-- 1.
myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys

-- 2.
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x:xs) (y:ys) = f x y : myZipWith f xs ys

-- 3.
myZip' :: [a] -> [b] -> [(a, b)]
myZip' = myZipWith (,)
-- Prelude> myZip [1, 2, 3] [4, 5, 6]
-- [(1,4),(2,5),(3,6)]
