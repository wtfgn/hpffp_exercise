-- 8. Write a function that tells you whether or not a given String (or
-- list) is a palindrome. Here you’ll want to use a function called
-- ’reverse,’ a predefined function that does just what it sounds like.
-- reverse :: [a] -> [a]
-- reverse "blah"
-- "halb"
-- isPalindrome :: (Eq a) => [a] -> Bool
-- isPalindrome x = undefined

-- Solution:
isPalinfrome :: (Eq a) => [a] -> Bool
isPalinfrome x = x == reverse x