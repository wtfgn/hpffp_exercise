-- For the following set of exercises, you are not expected to use folds.
-- These are intended to review material from previous chapters. Feel
-- free to use any syntax or structure from previous chapters that seems
-- appropriate.

-- 1. Given the following sets of consonants and vowels:
stops = "pbtdkg"
vowels = "aeiou"
-- a) Write a function that takes inputs from stops and vowels
-- and makes 3-tuples of all possible stop-vowel-stop combinations. These will not all correspond to real words in English,
-- although the stop-vowel-stop pattern is common enough
-- that many of them will.

-- b) Modify that function so that it only returns the combinations
-- that begin with a p.

-- c) Now set up lists of nouns and verbs (instead of stops and
-- vowels) and modify the function to make tuples representing
-- possible noun-verb-noun sentences.

-- Solution
-- a)
stopVowelStop :: [(Char, Char, Char)]
stopVowelStop = [(x, y, z) | x <- stops, y <- vowels, z <- stops]

-- b)
stopVowelStopP :: [(Char, Char, Char)]
stopVowelStopP = [(x, y, z) | x <- stops, x == 'p', y <- vowels, z <- stops]

-- c)
nouns = ["cat", "dog", "bird", "fish"]
verbs = ["eats", "sleeps", "flies", "swims"]
nounVerbNoun :: [(String, String, String)]
nounVerbNoun = [(x, y, z) | x <- nouns, y <- verbs, z <- nouns]