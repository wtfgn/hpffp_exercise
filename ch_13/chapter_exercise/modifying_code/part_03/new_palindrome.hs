-- If you tried using palindrome on a sentence such as “Madam
-- I’m Adam,” you may have noticed that palindrome checker
-- doesn’t work on that. Modifying the above so that it works on
-- sentences, too, involves several steps. You may need to refer
-- back to previous examples in the chapter to get ideas for proper
-- ordering and nesting. You may wish to import Data.Char to use
-- the function toLower. Have fun.

import Control.Monad (forever)
import Data.Char (isAlpha, toLower)
import System.Exit (exitSuccess)

preProcessString :: String -> String
preProcessString = map toLower . filter isAlpha

palindrome :: IO ()
palindrome = forever $ do
  line1 <- getLine >>= return . preProcessString
  if line1 == reverse line1
    then putStrLn "It's a palindrome!"
    else putStrLn "Nope!" >> exitSuccess