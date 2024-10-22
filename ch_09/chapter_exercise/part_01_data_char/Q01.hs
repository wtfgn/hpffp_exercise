-- These first few exercises are straightforward but will introduce you to
-- some new library functions and review some of what we’ve learned so
-- far. Some of the functions we will use here are not standard in Prelude
-- and so have to be imported from a module called Data.Char. You may
-- do so in a source file (recommended) or at the Prelude prompt with
-- the same phrase: import Data.Char (write that at the top of your
-- source file). This brings into scope a bunch of new standard functions
-- we can play with that operate on Char and String types.

import Data.Char

-- 1. Query the types of isUpper and toUpper.

-- Solution:
-- Prelude> :t isUpper
-- isUpper :: Char -> Bool

-- Prelude> :t toUpper
-- toUpper :: Char -> Char
