-- For the following expressions, please add a type signature. You should
-- be able to rely on GHCi type inference to check your work, although
-- you might not have precisely the same answer as GHCi gives (due to
-- polymorphism, etc).

-- 1. While we haven’t fully explained this syntax yet, you’ve seen it
-- in Chapter 2 and as a solution to an exercise in Chapter 4. This
-- syntax is a way of destructuring a single element of a list.
-- functionH ::
-- functionH (x:_) = x

-- 2. functionC ::
-- functionC x y = if (x > y) then True else False

-- 3. functionS ::
-- functionS (x, y) = y

-- Solution:
-- 1)
functionH :: [a] -> a
functionH (x:_) = x
-- 2) 
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

-- 3) 
functionS :: (a, b) -> b
functionS (x, y) = y