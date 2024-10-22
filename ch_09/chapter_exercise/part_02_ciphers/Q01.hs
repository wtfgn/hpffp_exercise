-- We’ll still be using Data.Char for this next exercise. You should save
-- these exercises in a module called Cipher because we’ll be coming
-- back to them in later chapters. You’ll be writing a Caesar cipher for
-- now, but we’ll suggest some variations on the basic program in later
-- chapters.

-- A Caesar cipher is a simple substitution cipher, in which each letter
-- is replaced by the letter that is a fixed number of places down the
-- alphabet from it. You will find variations on this all over the place
-- — you can shift leftward or rightward, for any number of spaces. A
-- rightward shift of 3 means that ’A’ will become ’D’ and ’B’ will become
-- ’E,’ for example. If you did a leftward shift of 5, then ’a’ would become
-- ’v’ and so forth.

-- Your goal in this exercise is to write a basic Caesar cipher that shifts
-- rightward. You can start by having the number of spaces to shift fixed,
-- but it’s more challenging to write a cipher that allows you to vary
-- the number of shifts so that you can encode your secret messages
-- differently each time.

-- There are Caesar ciphers written in Haskell all over the internet, but
-- to maxmize the likelihood that you can write yours without peeking
-- at those, we’ll provide a couple of tips. When yours is working the
-- way you want it to, we would encourage you to then look around and
-- compare your solution to others out there.
-- The first lines of your text file should look like this:

-- module Cipher where

-- import Data.Char

-- Data.Char includes two functions called ord and chr that can be used
-- to associate a Char with its Int representation in the Unicode system
-- and vice versa:

-- *Cipher> :t chr
-- chr :: Int -> Char
-- *Cipher> :t ord
-- ord :: Char -> Int
-- Using these functions is optional; there are other ways you can proceed
-- with shifting, but using chr and ord might simplify the process a bit.

-- You want your shift to wrap back around to the beginning of the
-- alphabet, so that if you have a rightward shift of 3 from ’z,’ you end
-- up back at ’c’ and not somewhere in the vast Unicode hinterlands.
-- Depending on how you’ve set things up, this might be a bit tricky.
-- Consider starting from a base character (e.g., ’a’) and using mod to
-- ensure you’re only shifting over the 26 standard characters of the
-- English alphabet.

-- You should include an unCaesar function that will decipher your text
-- as well. In a later chapter, we will test it.

-- Solution:
module Cipher where

import Data.Char

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