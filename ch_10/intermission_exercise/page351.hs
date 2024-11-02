-- 1. foldr (*) 1 [1..5]
-- will return the same result as which of the following:
-- a) flip (*) 1 [1..5]
-- b) foldl (flip (*)) 1 [1..5]
-- c) foldl (*) 1 [1..5]

-- 2. Write out the evaluation steps for
-- foldl (flip (*)) 1 [1..3]

-- 3. One difference between foldr and foldl is:
-- a) foldr, but not foldl, traverses the spine of a list from right
-- to left
-- b) foldr, but not foldl, always forces the rest of the fold
-- c) foldr, but not foldl, associates to the right
-- d) foldr, but not foldl, is recursive

-- 4. Folds are catamorphisms, which means they are generally used
-- to
-- a) reduce structure
-- b) expand structure
-- c) render you catatonic
-- d) generate infinite data structures

-- 5. The following are simple folds very similar to what you’ve already seen, but each has at least one error. Please fix them and
-- test in your REPL:
-- a) foldr (++) ["woot", "WOOT", "woot"]
-- b) foldr max [] "fear is the little death"
-- c) foldr and True [False, True]
-- d) This one is more subtle than the previous. Can it ever return
-- a different answer?
-- foldr (||) True [False, True]
-- e) foldl ((++) . show) "" [1..5]
-- f ) foldr const 'a' [1..5]
-- g) foldr const 0 "tacos"
-- h) foldl (flip const) 0 "burritos"
-- i) foldl (flip const) 'z' [1..5]

-- Solution:
-- 1.
-- b) and c) are correct
-- Because the first one won't typecheck
-- For the third one, since (*) is associative,
-- so folding from left or right will give the same result.
-- For the second one, (*) is commutative

-- 2.
-- let *' = flip (*)
-- foldl (flip (*)) 1 [1..3]
-- foldl (*') 1 [1..3]
-- foldl (*') (*' 1 1) [2, 3]
-- foldl (*') (*' (*' 1 1) 2) [3]
-- foldl (*') (*' (*' (*' 1 1) 2) 3) []
-- (*' (*' (*' 1 1) 2) 3)
-- (* 3 (* 2 (* 1 1)))
-- (* 3 (* 2 1))
-- (* 3 2)
-- 6

-- 3.
-- The correct answer is c)
-- For a), both foldr and foldl traverse the spine of a list from left to right
-- but foldr reduces the structure from right to left, while foldl does the opposite
-- For b), foldr has short-circuiting behavior, while foldl doesn't
-- because foldr f x:xs = f x (foldr f x xs)
-- If f does not force the evaluation of the second argument,
-- then foldr will not evaluate the rest of the list
-- For d), both foldr and foldl are recursive

-- 4.
-- a) reduce structure
-- Actually, catamorphisms can also be used in mapping,
-- filtering and the like are expressible in interms of a fold.

-- 5.
-- a)
-- foldr (++) "" ["woot", "WOOT", "woot"]

-- b)
-- foldr max ' ' "fear is the little death"

-- c)
-- foldr (&&) True [False, True]

-- d)
-- Because for the OR monoid, the identity element is False
-- otherwise, the result will always be True
-- foldr (||) False [False, True]

-- e)
-- foldl (\acc x -> acc ++ show x) "" [1..5]

-- f)
-- foldr const 0 [1..5]

-- g)
-- foldr const 'a' "tacos"

-- h)
-- foldl (flip const) 'a' "burritos"

-- i)
-- foldl (flip const) 0 [1..5]