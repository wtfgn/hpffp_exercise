-- We’re going to give you two types and their implementations. Then
-- we’re going to ask you if you can substitute the second type for the
-- first. You can test this by typing the first declaration and its type into
-- a file and editing in the new one, loading to see if it fails. Don’t just
-- guess, test all your answers!

-- 1. For the following definition.
-- a) 
-- i :: Num a => a
-- i = 1

-- b) Try replacing the type signature with the following:
-- i :: a
-- After you’ve formulated your own answer, then tested that
-- answer and believe you understand why you were right or
-- wrong, make sure to use GHCi to check what type GHC infers
-- for the definitions we provide without a type assigned. For
-- example, for this one, you’d type in:
-- Prelude> let i = 1
-- Prelude> :t i
-- Result elided intentionally.

-- Solution:
-- No. You cannot replace the type signature with i :: a.
-- Because if the first type signature is substituted with i :: a,
-- the type variable a is not constrained by any typeclass.