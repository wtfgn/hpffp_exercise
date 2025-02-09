import Data.Char (chr, isAlpha, ord)
import Data.List (partition)

main :: IO ()
main = do
  putStrLn "Enter plain text:"
  plain <- getLine
  putStrLn "Enter keyword:"
  keyword <- getLine
  putStrLn $ "Encrypted text:" ++ encrypt plain keyword

-- chapter exercise

-- Vigenère cipher
encrypt :: String -> String -> String
encrypt plain keyword = go plain key
  where
    key = genKey plain keyword
    go "" _ = ""
    go _ "" = ""
    go (p : ps) (k : ks)
      | isAlpha p = transform p k : go ps ks
      | otherwise = p : go ps ks

genKey :: String -> String -> String
genKey plain key = go plain key key
  where
    go "" kss _ = ""
    go pss "" _ = pss
    go (p : ps) [k] keyword =
      if isAlpha p
        then k : go ps keyword keyword
        else p : go ps keyword keyword
    go (p : ps) kss@(k : ks) keyword =
      if isAlpha p
        then k : go ps ks keyword
        else p : go ps kss keyword

transform :: Char -> Char -> Char
transform c1 c2 = chr $ base + offset
  where
    base = ord 'A'
    row = ord c1 - base
    col = ord c2 - base
    offset = (row + col) `mod` 26