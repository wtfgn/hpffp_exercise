data Doggies a =
  Husky a
  | Mastiff a
  deriving (Eq, Show)

data DogueDeBordeaux doge = DogueDeBordeaux doge

-- Given the datatypes defined in the above sections,
-- 1. Is Doggies a type constructor or a data constructor?
-- 2. What is the kind of Doggies?
-- 3. What is the kind of Doggies String?
-- 4. What is the type of Husky 10?
-- 5. What is the type of Husky (10 :: Integer)?
-- 6. What is the type of Mastiff "Scooby Doo"?
-- 7. Is DogueDeBordeaux a type constructor or a data constructor?
-- 8. What is the type of DogueDeBordeaux?
-- 9. What is the type of DogueDeBordeaux "doggie!"

-- Solution
-- 1. type constructor.
-- 2. * -> *
-- 3. *
-- 4. Num a => Doggies a
-- 5. Doggies Integer
-- 6. Doggies [Char]
-- 7. type constructor
-- 8. * -> *
-- 9. DogueDeBordeaux [Char]