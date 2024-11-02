-- Write the following functions for processing this data.
import Data.Time

data DatabaseItem = DbString String
  | DbNumber Integer
  | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = [
  DbDate (
    UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123)
    ),
  DbNumber 9001,
  DbString "Hello, world!",
  DbDate (
    UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123)
    )
  ]

-- 1. Write a function that filters for DbDate values and returns a list
-- of the UTCTime values inside them.
-- filterDbDate :: [DatabaseItem] -> [UTCTime]
-- filterDbDate = undefined

-- 2. Write a function that filters for DbNumber values and returns a
-- list of the Integer values inside them.
-- filterDbNumber :: [DatabaseItem] -> [Integer]
-- filterDbNumber = undefined

-- 3. Write a function that gets the most recent date.
-- mostRecent :: [DatabaseItem] -> UTCTime
-- mostRecent = undefined

-- 4. Write a function that sums all of the DbNumber values.
-- sumDb :: [DatabaseItem] -> Integer
-- sumDb = undefined

-- 5. Write a function that gets the average of the DbNumber values.
-- -- You'll probably need to use fromIntegral
-- -- to get from Integer to Double.
-- avgDb :: [DatabaseItem] -> Double
-- avgDb = undefined

-- Solution:
-- 1.
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr collectDates []
  where
    collectDates (DbDate utcTime) acc = utcTime : acc
    collectDates _ acc = acc

-- 2.
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr collectNumbers []
  where
    collectNumbers (DbNumber num) acc = num: acc
    collectNumbers _ acc = acc

-- 3.
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = foldr max defaultUTCTime . filterDbDate
  where defaultUTCTime = UTCTime (fromGregorian 1970 1 1) (secondsToDiffTime 0)


-- 4.
sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

-- 5.
avgDb :: [DatabaseItem] -> Double
avgDb = average . map fromIntegral . filterDbNumber

average :: (Fractional a, Foldable t) => t a -> a
average xs = summation / size
  where
    summation = sum xs
    size = fromIntegral $ length xs
