-- 6. Let’s see if we can expand that function into a module. Why
-- would we want to? By expanding it into a module, we can add
-- more functions later that can interact with each other. We can
-- also then export it to other modules if we want to and use this
-- code in those other modules. There are different ways you could
-- lay it out, but for the sake of convenience, we’ll show you a sample
-- layout so that you can fill in the blanks:
-- module Reverse where
-- rvrs :: String -> String
-- rvrs x =
-- main :: IO ()
-- main = print ()
-- Into the parentheses after print you’ll need to fill in your function name rvrs plus the argument you’re applying rvrs to, in
-- this case “Curry is awesome.” That rvrs function plus its argument are now the argument to print. It’s important to put them
-- inside the parentheses so that that function gets applied and
-- evaluted first, and then that result is printed.
-- Of course, we have also mentioned that you can use the $ symbol to avoid using parentheses, too. Try modifying your main
-- function to use that instead of the parentheses.

module BuildingFunctions.Q06 where

rvrs :: String -> String
rvrs x = 
  let 
    curry = take 5 x
    is = take 2 $ drop 6 x
    awesome = drop 9 x
  in
    awesome ++ " " ++ is ++ " " ++ curry

main :: IO ()
main = print $ rvrs "Curry is awesome"