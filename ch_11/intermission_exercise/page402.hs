-- module Jammin where
import Data.List

-- datatypes
data Fruit =
    Peach
  | Plum
  | Apple
  | Blackberry
  deriving (Eq, Show, Ord)
  
-- This is equiavlent to 
-- data JamJars = Product Fruit Int deriving (Eq Show)
-- or
-- data JamJars = (Fruit, Int)
-- data JamJars =
--   Jam Fruit Int
--   deriving (Eq, Show)
  
-- 1. Let’s make a module for this. Name your module at the top of
-- the file:
-- module Jammin where

-- 2. Rewrite JamJars with record syntax.
data JamJars = 
  Jam {
    fruit :: Fruit,
    canned :: Int
  } deriving (Eq, Show)

-- 3. What is the cardinality of JamJars?
-- 4 + C(Int), where C(x) is the cardinality of type x

-- 4. Add Ord instances to your deriving clauses.

-- 5. You can use the record field accessors in other functions as well.
-- To demonstrate this, work up some sample data that has a count
-- of the types and numbers of jars of jam in the rows in our pantry
-- (you can define more data than this if you like):
row1 = Jam Peach 1
row2 = Jam Plum 2
row3 = Jam Apple 3
row4 = Jam Blackberry 4
row5 = Jam Peach 9
row6 = Jam Plum 6
allJam = [row1, row2, row3, row4, row5, row6]
-- Now over that list of data, we can map the field accessor for the
-- Int value and see a list of the numbers for each row.
getCannedCount = map canned

-- 6. Write a function that will return the total number of jars of jam.
grossCannedCount jams = sum $ getCannedCount jams

-- 7. Write a function that will tell you which row has the most jars of
-- jam in it. It should return a result like this, though the fruit and
-- number will vary depending on how you defined your data:
-- *Jammin> mostRow
-- Jam {fruit = Apple, jars = 10}
getMostCanned :: [JamJars] -> Int
getMostCanned = foldr findMax 0
  where
    findMax (Jam _ a) acc =
      if a > acc then a
      else acc

-- 8. Under your module name, import the module called Data.List.
-- It includes some standard functions called sortBy and groupBy
-- that will allow us to organize our list of jams. Look at their type
-- signatures because there are some important differences between
-- them.

-- sortBy :: (a -> a -> Ordering) -> [a] -> [a]
-- groupBy :: (a -> a -> Bool) -> [a] -> [[a]]

-- 9. You’ll want to sort the list allJams by the first field in each record.
-- You may (or may not) want to use the following helper function
-- as part of that:
compareKind (Jam k _) (Jam k' _) = compare k k'
sortJam = sortBy compareKind

-- 10. Now take the sorting function and use groupBy to group the
-- jams by the type of fruit they are made from. You’ll later want
-- the ability to sum the sublists separately, so you’re looking for a
-- result that is a list of lists (again, the actual data in your list will
-- depend on how you defined it):
groupJam :: [JamJars] -> [[JamJars]]
groupJam = groupBy isSameFruit . sortJam
  where
    isSameFruit (Jam f1 _) (Jam f2 _) = f1 == f2
    

    
main :: IO ()
main = print $ groupJam allJam
