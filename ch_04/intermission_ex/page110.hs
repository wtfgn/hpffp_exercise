-- Given the following datatype, answer the following questions:
data Mood = Blah | Woot deriving Show

-- 1. What is the type constructor, or name of this type?

-- 2. If the function requires a Mood value, what are the values you
-- could possibly use there?

-- 3. We are trying to write a function changeMood to change Chris’s
-- mood instantaneously. So far, we’ve written a type signature
-- changeMood :: Mood -> Woot. What’s wrong with that?

-- 4. Now we want to write the function that changes his mood. Given
-- an input mood, it gives us the other one. Fix any mistakes and
-- complete the function:
-- changeMood Mood = Woot
-- changeMood _ = Blah

-- 5. Enter all of the above — datatype (including the “deriving Show”
-- bit), your corrected type signature, and the corrected function
-- into a source file. Load it and run it in GHCi to make sure you
-- got it right.

-- Solution:
-- 1. Mood
-- 2. Blah or Woot
-- 3. The type signature should be
changeMood :: Mood -> Mood
-- 4. 
changeMood Blah = Woot
changeMood _ = Blah
-- 5. The answer is in this file. Load it in GHCi to test it.