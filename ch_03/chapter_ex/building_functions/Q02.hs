-- 2. Now take each of the above and rewrite it in a source file as a
-- general function that could take different string inputs as arguments 
-- but retain the same behavior. Use a variable as the
-- argument to your (named) functions. If you’re unsure how to
-- do this, refresh your memory by looking at the waxOff exercise
-- from the previous chapter and the GlobalLocal module from
-- this chapter

-- a) "Curry is awesome" ++ "!"
addExclamation :: String -> String
addExclamation = (++ "!")

-- b) take 1 (drop 4 "Curry is awesome!")
getChar :: Int -> String -> [Char]
getChar n = take 1 . drop n

-- c) drop 9 "Curry is awesome!"
dropAwesome :: String -> String
dropAwesome = drop 9