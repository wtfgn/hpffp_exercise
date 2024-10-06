-- Next, take a look at the following code examples and try to decide
-- if they will work, what result they will return if they do, and why or
-- why not (be sure, as always, to test them in your REPL once you have
-- decided on your answer):
-- 1. max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])
-- 2. compare (3 * 4) (3 * 5)
-- 3. compare "Julie" True
-- 4. (5 + 3) > (3 + 6)

-- Solution:
-- 1. Return 5.

-- 2. Return LT.

-- 3. Error. The type for those two values are different.

-- 4. Return False.


data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving (Show)

instance Eq DayOfWeek where
  (==) :: DayOfWeek -> DayOfWeek -> Bool
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False
