-- As in previous chapters, you will gain more by working out the answer
-- before you check what GHCi tells you, but be sure to use your REPL
-- to check your answers to the following exercises. Also, you will need
-- to have the awesome, alsoAwesome, and allAwesome code from above
-- in scope for this REPL session. For convenience of reference, here
-- are those values again:
awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

-- length is a function that takes a list and returns a result that tells how
-- many items are in the list.

-- 1. Given the definition of length above, what would the type signature be? 
-- How many arguments, of what type does it take? 
-- What is the type of the result it evaluates to?

-- Solutions:
-- 1. 
-- length :: [a] -> Int
-- It takes one list of any type and returns an Int.
