-- 1. These lines of code are from a REPL session. Is 𝑦 in scope for 𝑧?
-- Prelude> let x = 5
-- Prelude> let y = 7
-- Prelude> let z = x * y

-- Solution:
-- Yes, y is in scope for z. Actually, y is in the global scope
-- when you use let to define variables in REPL.

-- 2. These lines of code are from a REPL session. Is ℎ in scope for
-- function 𝑔?
-- Prelude> let f = 3
-- Prelude> let g = 6 * f + h

-- Solution:
-- No, h is not in scope for g. h is not defined in the REPL session.

-- 3. This code sample is from a source file. Is everything we need to
-- execute area in scope?
-- area d = pi * (r * r)
-- r = d / 2

-- Solution:
-- No, area is a function that takes an argument d
-- where it uses r which depends on d, but d is not defined in the scope.
-- (r is defined in the global scope, so it is in scope for area)

-- 4. This code is also from a source file. Now are 𝑟 and 𝑑 in scope for
-- area?
-- area d = pi * (r * r)
--   where r = d / 2

-- Solution:
-- Yes, r and d are in scope for area. r is defined in the where clause

-- ---------------------------------------------------------------------------

-- Read the syntax of the following functions and decide whether it will
-- compile. Test them in your REPL and try to fix the syntax errors
-- where they occur.
-- 1. ++ [1, 2, 3] [4, 5, 6]
-- 2. '<3' ++ ' Haskell'
-- 3. concat ["<3", " Haskell"]

-- Solution:
-- 1. (++) [1, 2, 3] [4, 5, 6]
-- 2. "<3" ++ " Haskell". The single quotes are for characters, double quotes are for strings.
-- 3. concat ["<3", " Haskell"] (no syntax errors)