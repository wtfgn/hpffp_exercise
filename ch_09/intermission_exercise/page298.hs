-- Some things you’ll want to know about the Enum typeclass:
-- Prelude> :info Enum
-- class Enum a where
-- succ :: a -> a
-- pred :: a -> a
-- toEnum :: Int -> a
-- fromEnum :: a -> Int
-- enumFrom :: a -> [a]
-- enumFromThen :: a -> a -> [a]
-- enumFromTo :: a -> a -> [a]
-- enumFromThenTo :: a -> a -> a -> [a]
-- Prelude> succ 0
-- 1
-- Prelude> succ 1
-- 2
-- Prelude> succ 'a'
-- 'b'
-- Write your own enumFromTo definitions for the types provided. Do
-- not use range syntax to do so. It should return the same results as if
-- you did [start..stop].

-- eftBool :: Bool -> Bool -> [Bool]
-- eftBool = undefined
-- eftOrd :: Ordering -> Ordering -> [Ordering]
-- eftOrd = undefined
-- eftInt :: Int -> Int -> [Int]
-- eftInt = undefined
-- eftChar :: Char -> Char -> [Char]
-- eftChar = undefined

-- Solution:
eftBool :: Bool -> Bool -> [Bool]
eftBool start stop = go start stop []
  where
    go s e acc
      | s == e = acc ++ [s]
      | otherwise = go (succ s) e (acc ++ [s])

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd start stop = go start stop []
  where
    go s e acc
      | s == e = acc ++ [s]
      | otherwise = go (succ s) e (acc ++ [s])

eftInt :: Int -> Int -> [Int]
eftInt  start stop = go start stop []
  where
    go s e acc
      | s == e = acc ++ [s]
      | otherwise = go (succ s) e (acc ++ [s])

eftChar :: Char -> Char -> [Char]
eftChar start stop = go start stop []
  where
    go s e acc
      | s == e = acc ++ [s]
      | otherwise = go (succ s) e (acc ++ [s])
