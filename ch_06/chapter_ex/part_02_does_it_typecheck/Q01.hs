-- Examine the following code and decide whether it will typecheck.
-- Then load it in GHCi and see if you were correct. If it doesn’t typecheck, try to match the type error against your understanding of why
-- it didn’t work. If you can, fix the error and re-run the code.

-- 1. Does the following code typecheck? If not, why not?
data Person = Person Bool
printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

-- Solution:
-- No, it doesn't typecheck.
-- Because the type Person doesn't have an instance of the typeclass Show.
-- To fix it, we need to add an instance of the typeclass Show to the type Person.
instance Show Person where
  show :: Person -> String
  show (Person b) = "Person " ++ show b