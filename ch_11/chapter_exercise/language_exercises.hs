import Data.Char
import Data.List

-- 1. Write a function that capitalizes a word.
-- capitalizeWord :: String -> String
-- capitalizeWord = undefined
-- Example output.
-- Prelude> capitalizeWord "Titter"
-- "Titter"
-- Prelude> capitalizeWord "titter"
-- "Titter"

capitalizeWord :: String -> String
capitalizeWord [] = []
capitalizeWord (x:xs) = toUpper x : xs


-- 2. Write a function that capitalizes sentences in a paragraph.
-- Recognize when a new sentence has begun by checking for periods.
-- Reuse the capitalizeWord function.
-- capitalizeParagraph :: String -> String
-- capitalizeParagraph = undefined
-- Example result you should get from your function:
-- Prelude> capitalizeParagraph "blah. woot ha."
-- "Blah. Woot ha."
capitalizeParagraph :: String -> String
capitalizeParagraph [] = []
capitalizeParagraph (x:xs) = toUpper x : go xs
  where
    go [] = []
    go ('.' : ' ' : x : xs) = ". " ++ toUpper x : go xs
    go (x : xs) = x : go xs

    


-- driver program
main :: IO ()
main =
  let
    word = "titter"
    paragraph = "blah. woot ha. aha test test test. titter tttt."
  in do
    putStrLn $ "capitalizeWord " ++ word ++ " : " ++ capitalizeWord word
    putStrLn $ "capitalizeParagraph " ++ paragraph ++ " : " ++ capitalizeParagraph paragraph