-- 3. We’d really like the answer to be more precise. Can you rewrite
-- that using fractional division?

seekritFunc x =
  div (sum (map length (words x)))
  (length (words x))

-- Solution
seekritFunc' x = lengthOfWords / numberOfWords
  where
    lengthOfWords = fromIntegral . sum . map length . words $ x
    numberOfWords = fromIntegral . length . words $ x