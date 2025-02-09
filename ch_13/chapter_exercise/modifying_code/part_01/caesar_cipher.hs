module Cipher where

import Data.Char (chr, isUpper, ord)

type Shift = Int

type Text = String

shiftChar :: Shift -> Char -> Char
shiftChar shift c = chr $ base + shifted
  where
    base = if isUpper c then ord 'A' else ord 'a'
    offset = ord c - base
    shifted = (offset + shift) `mod` 26

caesar :: Shift -> Text -> Text
caesar shift = map (shiftChar shift)

unCaesar :: Shift -> Text -> Text
unCaesar shift = caesar (-shift)

main :: IO ()
main = do
  putStrLn "Enter plain text:"
  plain <- getLine
  putStrLn "Enter key:"
  -- read an integer from the user
  key <- readLn :: IO Int
  putStrLn $ "Encrypted text:" ++ caesar key plain
