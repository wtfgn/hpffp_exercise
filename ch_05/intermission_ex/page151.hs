-- Given a function and its type, tell us what type results from applying
-- some or all of the arguments.
-- You can check your work in the REPL like this (using the first question
-- as an example):
-- Prelude> let f :: a -> a -> a -> a; f = undefined
-- Prelude> let x :: Char; x = undefined
-- Prelude> :t f x
-- It turns out that you can check the types of things that aren’t really
-- implemented yet, so long as you give GHCi an undefined to bind the
-- signature to.

-- 1. If the type of f is a -> a -> a -> a, and the type of 𝑥 is Char
-- then the type of f x is
-- a) Char -> Char -> Char
-- b) x -> x -> x -> x
-- c) a -> a -> a
-- d) a -> a -> a -> Char

-- 2. If the type of g is a -> b -> c -> b, then the type of
-- g 0 'c' "woot" is
-- a) String
-- b) Char -> String
-- c) Int
-- d) Char

-- 3. If the type of h is (Num a, Num b) => a -> b -> b, then the
-- type of
-- h 1.0 2 is
-- a) Double
-- b) Integer
-- c) Integral b => b
-- d) Num b => b

-- 4. If the type of h is (Num a, Num b) => a -> b -> b, then the
-- type of
-- h 1 (5.5 :: Double) is
-- a) Integer
-- b) Fractional b => b
-- c) Double
-- d) Num b => b

-- 5. If the type of jackal is (Ord a, Eq b) => a -> b -> a, then
-- the type of
-- jackal "keyboard" "has the word jackal in it"
-- a) [Char]
-- b) Eq b => b
-- c) b -> [Char]
-- d) b
-- e) Eq b => b -> [Char]

-- 6. If the type of jackal is (Ord a, Eq b) => a -> b -> a, then
-- the type of
-- jackal "keyboard"
-- a) b
-- b) Eq b => b
-- c) [Char]
-- d) b -> [Char]
-- e) Eq b => b -> [Char]

-- 7. If the type of kessel is (Ord a, Num b) => a -> b -> a, then
-- the type of
-- kessel 1 2 is
-- a) Integer
-- b) Int
-- c) a
-- d) (Num a, Ord a) => a
-- e) Ord a => a
-- f ) Num a => a

-- 8. If the type of kessel is (Ord a, Num b) => a -> b -> a, then
-- the type of
-- kessel 1 (2 :: Integer) is
-- a) (Num a, Ord a) => a
-- b) Int
-- c) a
-- d) Num a => a
-- e) Ord a => a
-- f ) Integer

-- 9. If the type of kessel is (Ord a, Num b) => a -> b -> a, then
-- the type of
-- kessel (1 :: Integer) 2 is
-- a) Num a => a
-- b) Ord a => a
-- c) Integer
-- d) (Num a, Ord a) => a
-- e) a

-- To review your answers for the above, you can do this in the REPL,
-- changing the relevant information for each:
-- Prelude> let f :: a -> a -> a -> a; f = undefined
-- Prelude> :t f undefined
-- f undefined :: a -> a -> a
-- Prelude> :t f 1
-- f 1 :: Num a => a -> a -> a
-- Prelude> :t f (1 :: Int)
-- f (1 :: Int) :: Int -> Int -> Int

-- Solution:
-- 1. a) Char -> Char -> Char

-- 2. d) Char

-- 3. d) Num b => b
-- because after we apply 1.0 to h, we are left with h :: Num b => b -> b
-- Now, 2 is a numeric literal, which a polymorphic constant,
-- meaning that it can acy ANY type of number, not just integer,
-- so the type of 2 is Num b => b.
-- So, the type of h 1.0 2 is Num b => b.

-- 4. c) Double
-- because we have restricted the type of 5.5 to be a Double.

-- 5. a) [Char]
-- because the first argument is a String, which is a list of Char.

-- 6. e) Eq b => b -> [Char]

-- 7) d) (Num a, Ord a) => a

-- 8) a) (Num a, Ord a) => a

-- 9) c) Integer