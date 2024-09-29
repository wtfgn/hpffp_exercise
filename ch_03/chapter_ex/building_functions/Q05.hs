-- 5. Using the take and drop functions we looked at above, see if you
-- can write a function called rvrs (an abbreviation of ‘reverse’ used
-- because there is a function called ‘reverse’ already in Prelude,
-- so if you call your function the same name, you’ll get an error
-- message). rvrs should take the string “Curry is awesome” and
-- return the result “awesome is Curry.” This may not be the most
-- lovely Haskell code you will ever write, but it is quite possible
-- using only what we’ve learned so far. First write it as a single
-- function in a source file. This doesn’t need, and shouldn’t, work
-- for reversing the words of any sentence. You’re expected only to
-- slice and dice this particular string with take and drop.

module BuildingFunctions.Q05 where

rvrs :: String -> String
rvrs x = 
  let 
    curry = take 5 x
    is = take 2 $ drop 6 x
    awesome = drop 9 x
  in
    awesome ++ " " ++ is ++ " " ++ curry

