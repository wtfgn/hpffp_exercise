-- We’re going to describe a function in English, then in math notation,
-- then show you what your function should return for some test inputs.
-- Your task is to write the function in Haskell.
-- The McCarthy 91 function yields 𝑥 − 10 when 𝑥 > 100 and 91 otherwise.
-- The function is recursive.
--           ⎧
--           ⎪𝑛 − 10 if 𝑛 > 100
-- 𝑀𝐶(𝑛) =⎨𝑀𝐶(𝑀𝐶(𝑛 + 11)) if 𝑛 ≤ 100
--           ⎪
--           ⎩
-- mc91 = undefined
-- You haven’t seen map yet, but all you need to know right now is that it
-- applies a function to each member of a list and returns the resulting
-- list. It’ll be explained in more detail in the next chapter.
-- Prelude> map mc91 [95..110]
-- [91,91,91,91,91,91,91,92,93,94,95,96,97,98,99,100]

mc91 :: Integer -> Integer
mc91 n
  | n > 100 = n - 10
  | otherwise = mc91 . mc91 $ n + 11