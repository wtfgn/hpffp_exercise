type Name = String

type Age = Integer

data Person = Person Name Age deriving (Show)

data PersonInvalid
  = NameEmpty
  | AgeTooLow
  | PersonInvalidUnknown String
  deriving (Eq, Show)

mkPerson ::
  Name ->
  Age ->
  Either PersonInvalid Person
mkPerson name age
  | name /= "" && age > 0 =
      Right $ Person name age
  | name == "" = Left NameEmpty
  | not (age > 0) = Left AgeTooLow
  | otherwise =
      Left $
        PersonInvalidUnknown $
          "Name was: "
            ++ show name
            ++ " Age was: "
            ++ show age

-- Your job is to write the following function without modifying
-- the code above.

gimmePerson :: IO ()
gimmePerson = do
  putStr "Please enter your name:"
  name <- getLine
  putStr "Please enter your age:"
  age <- readLn :: IO Integer
  case mkPerson name age of
    Right p -> putStrLn $ "Yay! Successfully got a person: " ++ show p
    Left NameEmpty -> putStrLn "Name cannot be empty"
    Left AgeTooLow -> putStrLn "Age cannot be less than 1"
    Left (PersonInvalidUnknown s) -> putStrLn $ "An error occurred: " ++ s
