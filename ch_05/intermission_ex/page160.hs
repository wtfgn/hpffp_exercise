-- Look at these pairs of functions. One function is unapplied, so the
-- compiler will infer maximally polymorphic type. The second function has been applied to a value, so the inferred type signature may
-- have become concrete, or at least less polymorphic. Figure out how
-- the type would change and why, make a note of what you think the
-- new inferred type would be and then check your work in GHCi.

-- 1. -- Type signature of general function
-- (++) :: [a] -> [a] -> [a]
-- -- How might that change when we apply
-- -- it to the following value?
-- myConcat x = x ++ " yo"

-- 2. -- General function
-- (*) :: Num a => a -> a -> a
-- -- Applied to a value
-- myMult x = (x / 3) * 5

-- 3. take :: Int -> [a] -> [a]
-- myTake x = take x "hey you"

-- 4. (>) :: Ord a => a -> a -> Bool
-- myCom x = x > (length [1..10])

-- 5. (<) :: Ord a => a -> a -> Bool
-- myAlph x = x < 'z'


-- Solution:
-- 1. myConcat :: [Char] -> [Char]
-- because "yo" is a [Char], so Haskell infers that the type of x must be [Char],
-- due to the type signature of (++) requiring both arguments to be of the same type.

-- 2. myMult :: Fractional a => a -> a
-- Why not Num a? 
-- Because not every Num is a Fracional. For example,
-- Int is a Num but not a Fractional.
-- But you may ask why does 5/6 work where 5 :: Num a => a and 6 :: Num a => a?
-- Because the (/) operator is defined in the Fractional typeclass.
-- So, Haskell infers that x must be a Fractional type.
-- ** This promotion only happens in the literal level, not the type level.

-- 3. myTake :: Int -> [Char]
-- Because take requires an Int as its first argument, and "hey you" is a [Char].
-- Haskell infers that x must be an Int.
-- And the return type is [Char] because take returns a list of the same type as its second argument.

-- 4. myCom :: Int -> Bool
-- Because length returns an Int, and (>) requires two arguments of the same type.
-- Therefore, Haskell infers that x must be an Int.

-- 5. myAlph :: Char -> Bool
-- Because 'z' is a Char, Haskell infers that x must be a Char.
-- And the return type is Bool because (<) returns a Bool.