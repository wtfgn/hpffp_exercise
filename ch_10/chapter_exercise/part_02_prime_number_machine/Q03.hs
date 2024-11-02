-- 3. In addition to the recursive and fold based myElem, write a version that uses any.
-- myElem :: Eq a => a -> [a] -> Bool
-- Prelude> myElem 1 [1..10]
-- True
-- Prelude> myElem 1 [2..10]
-- False

-- Solution
myElem :: Eq a => a -> [a] -> Bool
myElem x = any (==x)