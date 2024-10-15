-- 1. Write out the steps for reducing dividedBy 15 2 to its final
-- answer according to the Haskell code.

-- Solution:
-- Recall the definition of dividedBy:
dividedBy :: (Integral a) => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where
    go n d count
      | n < d = (count, n)
      | otherwise = go (n - d) d (count + 1)

-- We evaluate dividedBy 15 2:
-- So we have:
-- dividedBy 15 2 = go 15 2 0

-- Since 15 is not less than 2, we evaluate the otherwise case:
-- go (15 - 2) 2 (0 + 1)
-- go 13 2 1

-- Since 13 is not less than 2, we evaluate the otherwise case:
-- go (13 - 2) 2 (1 + 1)
-- go 11 2 2

-- Since 11 is not less than 2, we evaluate the otherwise case:
-- go (11 - 2) 2 (2 + 1)
-- go 9 2 3

-- Since 9 is not less than 2, we evaluate the otherwise case:
-- go (9 - 2) 2 (3 + 1)
-- go 7 2 4

-- Since 7 is not less than 2, we evaluate the otherwise case:
-- go (7 - 2) 2 (4 + 1)
-- go 5 2 5

-- Since 5 is not less than 2, we evaluate the otherwise case:
-- go (5 - 2) 2 (5 + 1)
-- go 3 2 6

-- Since 3 is not less than 2, we evaluate the otherwise case:
-- go (3 - 2) 2 (6 + 1)
-- go 1 2 7

-- Since 1 is less than 2, we evaluate the first case:
-- (7, 1)