-- Here is a very simple, short block of code. Notice it has a forever
-- that will make it keep running, over and over again. Load it into
-- your REPL and test it out. Then refer back to the chapter and
-- modify it to exit successfully after a False result.

import Control.Monad
import System.Exit (exitSuccess)

palindrome :: IO ()
palindrome = forever $ do
  line1 <- getLine
  case (line1 == reverse line1) of
    True -> putStrLn "It's a palindrome!"
    False -> putStrLn "Nope!" >> exitSuccess