-- Here is a bit of code as it might be entered into a source file. Remember
-- that when you write code in a source file, the order is unimportant, but
-- when writing code directly into the REPL the order does matter. Given
-- that, look at this code and rewrite it such that it could be evaluated in
-- the REPL (remember: you’ll need let when entering it directly into
-- the REPL). Be sure to enter your code into the REPL to make sure it
-- evaluates correctly.

-- z = 7
-- x = y ^ 2
-- waxOn = x * 5
-- y = z + 8

-- Solution:
-- z = 7
-- y = z + 8
-- x = y ^ 2
-- waxOn = x * 5

-- 1. Now you have a value called waxOn in your REPL. What do you
-- think will happen if you enter:
-- 10 + waxOn
-- -- or
-- (+10) waxOn
-- -- or
-- (-) 15 waxOn
-- -- or
-- (-) waxOn 15

-- Solution:
-- 10 + waxOn = 1135
-- (+10) waxOn = 1135
-- (-) 15 waxOn = -1110
-- (-) waxOn 15 = 1110

-- 2. Earlier we looked at a function called triple. While your REPL
-- has waxOn in session, re-enter the triple function at the prompt:
-- let triple x = x * 3

-- 3. Now, what will happen if we enter this at our GHCi prompt. Try
-- to reason out what you think will happen first, considering what
-- role waxOn is playing in this function call. Then enter it, see what
-- does happen, and check your understanding:
-- triple waxOn

-- Solution:
-- triple waxOn = waxOn * 3 = 3375
-- Then you apply the triple function to waxOn,
-- which is 1125, so the result is 1125 * 3 = 3375

-- 4. Rewrite waxOn as a function with a where clause in your source
-- file. Load it into your REPL and make sure it still works as expected!

-- Solution:
waxOn = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2

-- 5. Now to the same source file where you have waxOn, add the
-- triple function. Remember: You don’t need let and the function name should be at the left margin (that is, not nested as one
-- of the waxOn expressions). Make sure it works by loading it into
-- your REPL and then entering triple waxOn again at the REPL
-- prompt. You should have the same answer as you did above.

-- Solution:
triple x = x * 3

-- 6. Now, without changing what you’ve done so far in that file, add
-- a new function called waxOff that looks like this:
-- waxOff x = triple x

waxOff x = triple x

-- 7. Load the source file into your REPL and enter waxOff waxOn at
-- the prompt.
-- You now have a function, waxOff that can be applied to a variety
-- of arguments — not just waxOn but any (numeric) value you want
-- to put in for 𝑥. Play with that a bit. What is the result of waxOff
-- 10 or waxOff (-50)? Try modifying your waxOff function to do
-- something new — perhaps you want to first triple the 𝑥 value and
-- then square it or divide it by 10. Just spend some time getting
-- comfortable with modifying the source file code, reloading it,
-- and checking your modification in the REPL.
