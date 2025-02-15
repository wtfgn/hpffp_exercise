module Main (main) where

import Data.List (sort)
import Test.Hspec (describe, hspec, it, shouldBe)
import Test.QuickCheck
import WordNumberTest (testWordNumber)
import Data.Char (toUpper)
import Data.List (intersperse)

-- intermission exercise
multiply :: (Eq a, Num a) => a -> a -> a
multiply 0 _ = 0
multiply _ 0 = 0
multiply base multiplier = base + multiply base (multiplier - 1)

testMultiply :: IO ()
testMultiply = hspec $ do
  describe "Multiplication" $ do
    it "4 * 5 equals to 20" $ do
      (multiply 4 5 == (20 :: Integer)) `shouldBe` True

-- chapter exercises: Using QuciCheck
-- 1.
-- For a function
half :: (Fractional a) => a -> a
half x = x / 2

halfIdentity :: Double -> Double
-- this property should hold
halfIdentity = (* 2) . half

prop_halfIdentity :: Double -> Bool
prop_halfIdentity x = halfIdentity x == x

-- 2.
-- For any list you apply sort to
-- this property should hold
listOrdered :: (Ord a) => [a] -> Bool
listOrdered xs =
  snd $ foldr go (Nothing, True) xs
  where
    go _ status@(_, False) = status
    go y (Nothing, t) = (Just y, t)
    go y (Just x, _) = (Just y, x >= y)

prop_listOrdered :: (Ord a) => [a] -> Bool
prop_listOrdered = listOrdered . sort

-- 3.
plusAssociative :: (Eq a, Num a) => a -> a -> a -> Bool
plusAssociative x y z =
  x + (y + z) == (x + y) + z

plusCommutative :: (Eq a, Num a) => a -> a -> Bool
plusCommutative x y =
  x + y == y + x

-- 4.
-- Now do the same for multiplication
prop_multiplyAssociative :: (Eq a, Num a) => a -> a -> a -> Bool
prop_multiplyAssociative x y z =
  x * (y * z) == (x * y) * z

prop_multiplyCommutative :: (Eq a, Num a) => a -> a -> Bool
prop_multiplyCommutative x y =
  x * y == y * x

-- 5.
-- We mentioned in one of the first chapters that there are some
-- laws involving the relationship of quot and rem and div and mod.
-- Write QuickCheck tests to prove them

prop_quotRem :: Int -> Int -> Property
prop_quotRem x y = (y /= 0) ==> (quot x y) * y + (rem x y) == x

prop_divMod :: Int -> Int -> Property
prop_divMod x y = (y /= 0) ==> (div x y) * y + (mod x y) == x

-- 6.
-- Is (^) associative? Is it commutative? Use QuickCheck to see if the
-- computer can contradict such an assertion.

-- (^) is not associative
-- E.g. (0 ^ 0) ^ 0 = 1 ^ 0 = 1
--      0 ^ (0 ^ 0) = 0 ^ 1 = 0
prop_powerAssociative ::
  ( Integral b1,
    Integral b2,
    Num a,
    Eq a
  ) =>
  a ->
  b1 ->
  b2 ->
  Bool
prop_powerAssociative x y z =
  x ^ (y ^ z) == (x ^ y) ^ z

-- (^) is not commutative
-- E.g. 0 ^ 1 = 0
--      1 ^ 0 = 1
prop_powerCommutative :: (Integral b) => b -> b -> Bool
prop_powerCommutative x y =
  x ^ y == y ^ x

-- 7.
-- Test that reversing a list twice is the same as the identity of the
-- list:
prop_reverseIdentity :: (Eq a) => [a] -> Bool
prop_reverseIdentity xs = (reverse . reverse) xs == id xs

-- 8.
-- Write a property for the definition of ($).
-- ($) f a = f a
-- f . g = \x -> f (g x)

prop_dollar :: (Eq b) => Fun a b -> a -> Bool
prop_dollar (Fun _ f) a = f a == (f $ a)


prop_compose :: Eq c => Fun b c -> Fun a b -> a -> Bool
prop_compose (Fun _ f) (Fun _ g) x = f (g x) == (f . g) x

-- 9.
-- See if these two functions are equal:

-- foldr (:) == (++)
-- This would fail because @foldr (++) [0] [1]@ would be [1, 0]
-- while @[0] ++ [1]@ would be [0, 1]
prop_foldrConsEqualsConcat :: Eq a => [a] -> [a] -> Bool
prop_foldrConsEqualsConcat xs ys = foldr (:) xs ys == xs ++ ys

-- foldr (++) [] == concat
prop_foldrConcatEqualsConcat :: Eq a => [[a]] -> Bool
prop_foldrConcatEqualsConcat xss = foldr (++) [] xss == concat xss

-- 10.
-- Hm. Is that so?
-- f n xs = length (take n xs) == n

-- No. Because if n is greater than the length of xs,
-- the length of take n xs will be the length of xs
prop_lengthTake :: Int -> [a] -> Bool
prop_lengthTake n xs = length (take n xs) == n

-- 11.
-- Finally, this is a fun one. You may remember we had you compose
-- read and show one time to complete a “round trip.” Well,
-- now you can test that it works:

-- read (show x) == x
prop_readShowRoundTrip :: (Eq a, Read a, Show a) => a -> Bool
prop_readShowRoundTrip x = (read . show) x == x

-- Failure
-- Find out why this property fails.
-- for a function
square :: Num a => a -> a
square x = x * x
-- why does this property not hold?
-- Examine the type of sqrt.
squareIdentity :: Double -> Double
squareIdentity = square . sqrt

-- Explanation:
-- The property fails because of floating point arithmetic and precision.
-- Besides, if you put a negative number, the property will fail because
-- sqrt of a negative number is NaN.

prop_squareSqrtIdentity :: Double -> Bool
prop_squareSqrtIdentity x = squareIdentity x == x

prop_squareSqrtIdentity' :: Double -> Property
prop_squareSqrtIdentity' x = (x >= 0) ==> squareIdentity x == x
-- Hint: Read about floating point arithmetic and precision if you’re
-- unfamiliar with it.

-- Idempotence
-- Idempotence refers to a property of some functions in which the
-- result value does not change beyond the initial application. If you
-- apply the function once, it returns a result, and applying the same
-- function to that value won’t ever change it. You might think of a list
-- that you sort: once you sort it, the sorted list will remain the same
-- after applying the same sorting function to it. It’s already sorted, so
-- new applications of the sort function won’t change it.
-- Use QuickCheck and the following helper functions to demonstrate
-- idempotence for the following:

twice :: (a -> a) -> a -> a
twice f = f . f

fourTimes :: (a -> a) -> a -> a
fourTimes = twice . twice

capitalizeWord :: String -> String
capitalizeWord [] = []
capitalizeWord (x : xs) = toUpper x : xs

prop_IdempotenceCapitalizeWord :: String -> Bool
prop_IdempotenceCapitalizeWord x =
  capitalizeWord x == twice capitalizeWord x
    && capitalizeWord x == fourTimes capitalizeWord x

prop_IdempotenceSort :: Ord a => [a] -> Bool
prop_IdempotenceSort xs =
  sort xs == twice sort xs
    && sort xs == fourTimes sort xs

-- Make a Gen random generator for the datatype
-- We demonstrated in the chapter how to make Gen generators for
-- different datatypes. We are so certain you enjoyed that, we are going
-- to ask you to do it for some new datatypes:

data Fool
  = Fulse
  | Frue
  deriving (Eq, Show)

-- 1. Equal probabilities for each.
sumFoolEqual :: Gen Fool
sumFoolEqual = elements [Fulse, Frue]

-- 2. 2/3s chance of Fulse, 1/3 chance of Frue.
sumFoolTwoThirds :: Gen Fool
sumFoolTwoThirds = 
  frequency 
    [ (2, return Fulse)
    , (1, return Frue)
    ]

-- Hangman testing
-- Next, you should go back to the hangman project from the previous chapter
-- and write tests. The kinds of tests you can write at this
-- point will be limited due to the interactive nature of the game.
-- However, you can test the functions. Focus your attention on testing the
-- following:

-- Extracted snippet from the hangman project
data Puzzle = Puzzle
  String [Maybe Char] [Char]
  deriving (Eq)

instance Show Puzzle where
  show (Puzzle _ discovered guessed) =
    (intersperse ' ' $
     fmap renderPuzzleChar discovered)
    ++ " Guessed so far: " ++ guessed
    where
      renderPuzzleChar (Just c) = c
      renderPuzzleChar _ = '_'



-- function to test
fillInCharacter :: Puzzle -> Char -> Puzzle
fillInCharacter (Puzzle word filledInSoFar s) c =
  Puzzle word newFilledInSoFar (c : s)
  where
    zipper guessed wordChar guessChar =
      if wordChar == guessed
      then Just wordChar
      else guessChar
    newFilledInSoFar =
      let zd = zipper c
      in zipWith zd word filledInSoFar

-- test fillInCharacter
testFillInCharacter :: IO ()
testFillInCharacter = hspec $ do
  describe "fillInCharacter" $ do
    it "fills in the character if it is in the word" $ do
      let puzzle = Puzzle "cat" [Nothing, Nothing, Nothing] []
      let puzzle' = Puzzle "cat" [Just 'c', Nothing, Nothing] ['c']
      fillInCharacter puzzle 'c' `shouldBe` puzzle'
    it "does not fill in the character if it is not in the word" $ do
      let puzzle = Puzzle "cat" [Nothing, Nothing, Nothing] []
      let puzzle' = Puzzle "cat" [Nothing, Nothing, Nothing] ['b']
      fillInCharacter puzzle 'b' `shouldBe` puzzle'

-- function to test
handleGuess :: Puzzle -> Char -> IO Puzzle
handleGuess puzzle guess = do
  putStrLn $ "Your guess was: " ++ [guess]
  case (charInWord puzzle guess
      , alreadyGuessed puzzle guess) of
    (_, True) -> do
      putStrLn "You already guessed that\
              \ character, pick \
              \ something else!"
      return puzzle
    (True, _) -> do
      putStrLn "This character was in the\
              \ word, filling in the word\
              \ accordingly"
      return (fillInCharacter puzzle guess)
    (False, _) -> do
      putStrLn "This character wasn't in\
              \ the word, try again."
      return (fillInCharacter puzzle guess)
  where
    charInWord (Puzzle word _ _) c = c `elem` word
    alreadyGuessed (Puzzle _ _ guessed) c = c `elem` guessed

-- test handleGuess
testHandleGuess :: IO ()
testHandleGuess = hspec $ do
  describe "handleGuess" $ do
    it "Character is already guessed" $ do
      let puzzle = Puzzle "cat" [Just 'c', Nothing, Nothing] ['c']
      newPuzzle <- handleGuess puzzle 'c'
      newPuzzle `shouldBe` puzzle
    it "Character is in the word" $ do
      let puzzle = Puzzle "cat" [Nothing, Nothing, Nothing] []
      let puzzle' = Puzzle "cat" [Just 'c', Nothing, Nothing] ['c']
      newPuzzle <- handleGuess puzzle 'c'
      newPuzzle `shouldBe` puzzle'
    it "Character is not in the word" $ do
      let puzzle = Puzzle "cat" [Nothing, Nothing, Nothing] []
      let puzzle' = Puzzle "cat" [Nothing, Nothing, Nothing] ['b']
      newPuzzle <- handleGuess puzzle 'b'
      newPuzzle `shouldBe` puzzle'


main :: IO ()
main = do
  testMultiply
  testWordNumber
  quickCheck prop_halfIdentity
  quickCheck (prop_listOrdered :: [Int] -> Bool)
  quickCheck (plusAssociative :: Int -> Int -> Int -> Bool)
  quickCheck (plusCommutative :: Int -> Int -> Bool)
  quickCheck (prop_multiplyAssociative :: Int -> Int -> Int -> Bool)
  quickCheck (prop_multiplyCommutative :: Int -> Int -> Bool)
  quickCheck prop_quotRem
  quickCheck prop_divMod
  quickCheck (prop_powerAssociative :: Int -> Int -> Int -> Bool) -- should fail
  quickCheck (prop_powerCommutative :: Int -> Int -> Bool) -- should fail
  quickCheck (prop_reverseIdentity :: [Int] -> Bool)
  quickCheck (prop_dollar :: Fun Int Int -> Int -> Bool)
  quickCheck (prop_compose :: Fun Int Int -> Fun Int Int -> Int -> Bool)
  quickCheck (prop_foldrConsEqualsConcat :: [Int] -> [Int] -> Bool) -- should fail
  quickCheck (prop_foldrConcatEqualsConcat :: [[Int]] -> Bool)
  quickCheck (prop_lengthTake :: Int -> [Int] -> Bool) -- should fail
  quickCheck (prop_readShowRoundTrip :: Double -> Bool)
  quickCheck prop_squareSqrtIdentity' -- should fail
  quickCheck prop_IdempotenceCapitalizeWord
  quickCheck (prop_IdempotenceSort :: [Int] -> Bool)
  testFillInCharacter
  testHandleGuess