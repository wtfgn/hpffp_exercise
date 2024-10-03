-- The name is courtesy Phillip Wright
-- , thank you for the idea!
-- The focus here is on manipulating terms in order to get the types
-- to fit. This sort of exercise is something you’ll encounter in writing
-- real Haskell code, so the practice will make it easier to deal with when
-- you get there. Practicing this will make you better at writing ordinary
-- code as well.

-- We provide the types and bottomed out (declared as “undefined”)
-- terms. Bottom and undefined will be explained in more detail later.
-- The contents of the terms are irrelevant here. You’ll use only the
-- declarations provided and what the Prelude provides by default unless
-- otherwise specified. Your goal is to make the ???’d declaration pass
-- the typechecker by modifying it alone.

-- Here’s a worked example for how we present these exercises and how
-- you are expected to solve them. Given the following:

-- Here’s a worked example for how we present these exercises and how
-- you are expected to solve them. Given the following:
-- data Woot
-- data Blah
-- f :: Woot -> Blah
-- f = undefined
-- g :: (Blah, Woot) -> (Blah, Blah)
-- g = ???

-- Here it’s 𝑔 that you’re supposed to implement;
-- however, you can’t evaluate anything. You’re to only use type-checking 
-- and type-inference to validate your answers. Also note that we’re using a trick for defining
-- datatypes which can be named in a type signature, but have no values.
-- Here’s an example of a valid solution:

-- g :: (Blah, Woot) -> (Blah, Blah)
-- g (b, w) = (b, f w)

-- The idea is to only fill in what we’ve marked with ???.
-- Not all terms will always be used in the intended solution for a problem.

-- 1.
-- f :: Int -> String
-- f = undefined
-- g :: String -> Char
-- g = undefined
-- h :: Int -> Char
-- h = ???

-- Solution:
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h x = g (f x)