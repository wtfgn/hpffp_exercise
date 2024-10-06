-- Look at the types given for quotRem and
-- divMod. What do you think those functions do? Test your hypotheses
-- by playing with them in the REPL. We’ve given you a sample to start
-- with below:
-- Prelude> let ones x = snd (divMod x 10)

-- Solution:
-- quotRem :: Integral a => a -> a -> (a, a)
-- This function takes the first argument as the dividend
-- and the second argument as the divisor.
-- Then return a tuple with the first element being the quotient
-- and the second element being the remainder.

-- divMod :: Integral a => a -> a -> (a, a)
-- This function is similar to quotRem but the difference is that
-- quotRem always gives the same sign as the dividend
-- while divMod always gives the same sign as the divisor.