-- 2. Implement the function of the type a -> a -> Bool -> a once
-- each using a case expression and once with a guard.
foldBool :: a -> a -> Bool -> a
foldBool = error "Error: Need to implement foldBool!"

-- The result is semantically similar to if-then-else expressions
-- but syntactically quite different. Here is the pattern matching
-- version to get you started:
foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y

-- Solution:

-- Using case expression:
foldBool1 :: a -> a -> Bool -> a
foldBool1 x y b = case b of
  True -> x
  False -> y

-- Using guards:
foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b
  | b = x
  | otherwise = y