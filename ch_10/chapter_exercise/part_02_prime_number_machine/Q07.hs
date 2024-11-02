-- 7. squish flattens a list of lists into a list
-- squish :: [[a]] -> [a]
-- squish = undefined

-- Solution
squish :: [[a]] -> [a]
squish = foldr (++) []