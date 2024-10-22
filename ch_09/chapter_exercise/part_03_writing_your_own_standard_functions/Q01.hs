-- Below are the outlines of some standard functions. The goal here is
-- to write your own versions of these to gain a deeper understanding
-- of recursion over lists and how to make functions flexible enough
-- to accept a variety of inputs. You could figure out how to look up
-- the answers, but you won’t do that because you know you’d only be
-- cheating yourself out of the knowledge. Right?

-- Let’s look at an example of what we’re after here. The and function
-- can take a list of Bool values and returns True if and only if no values
-- in the list are False. Here’s how you might write your own version of
-- it:

-- direct recursion, not using (&&)
-- myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) = if x == False then False else myAnd xs

-- direct recursion, using (&&)
-- myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) = x && myAnd xs

-- 1. myOr returns True if any Bool in the list is True.
-- myOr :: [Bool] -> Bool
-- myOr = undefined

-- Solution:
-- 1.
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = if x == True then True else myOr xs

-- 2.
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) =  if f x == True then True else myAny f xs

-- 3.
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem t (x:xs) = t == x || myElem t xs 

-- 4.
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- 5.
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

-- 6.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

-- 7.
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- 8.
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ [] = error "Empty list"
myMaximumBy f (x:xs) = go f xs x
  where go _ [] acc = acc
        go f (x:xs) acc = if f x acc == GT then go f xs x else go f xs acc

-- 9.
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ [] = error "Empty list"
myMinimumBy f (x:xs) = go f xs x
  where go _ [] acc = acc
        go f (x:xs) acc = if f x acc == LT then go f xs x else go f xs acc

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare