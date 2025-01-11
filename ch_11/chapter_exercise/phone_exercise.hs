import Data.Char
import Data.Maybe
import Data.List

data Button =
  Button {
    digit :: Char,
    letters :: String
  }
  deriving (Eq, Show)

data DaPhone = MkPhone [Button]
  deriving (Eq, Show)

convo :: [String]
convo =
  [
    "Wanna play 20 questions",
    "Ya",
    "U 1st haha",
    "Lol ok. Have u ever tasted alcohol lol",
    "Lol ya",
    "Wow ur cool haha. Ur turn",
    "Ok. Do u think I am pretty Lol",
    "Lol ya",
    "Haha thanks just making sure rofl ur turn"
  ]
  
-- validButtons = "1234567890*#"
type Digit = Char

-- Valid presses: 1 and up
type Presses = Int

elemIndex' :: Eq a => a -> [a] -> Maybe Int
elemIndex' ele [] = Nothing
elemIndex' ele (x:xs) =
  if ele == x then Just 0
  else maybe Nothing (\x -> Just $ x + 1) $ elemIndex' ele xs

reverseTaps :: DaPhone -> Char -> [(Digit, Presses)]
reverseTaps (MkPhone buttons) char =
  if isUpper char then [('*', 1), (digit button, presses)]
  else [(digit button, presses)]
  where
    upperChar = toUpper char
    button = head $ filter containChar buttons
    allDigits = foldr (\b acc -> [digit b] ++ acc) [] buttons
    containChar button =
      upperChar `elem` letters button || char == digit button
    presses = 
      if char `elem` allDigits
      then 1 + (length $ letters button)
      else 1 + (fromJust . elemIndex' upperChar $ letters button)
      
-- assuming the default phone definition
-- 'a' -> ('2', 1)
-- 'A' -> [('*', 1), ('2', 1)]
cellPhonesDead :: 
     DaPhone
  -> String
  -> [(Digit, Presses)]
cellPhonesDead phone = foldr translate []
  where
    translate char acc =
      (reverseTaps phone char) ++ acc

fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps = foldr addPresses 0
  where
    addPresses (_, presses) acc = presses + acc

mostPopularLetter :: String -> Char
mostPopularLetter = 
  head
  . fst
  . maximumBy (\x y -> compare (snd x) (snd y))
  . map (\c -> (c, length c))
  . group
  . sort
  . filter isAlpha

coolestLtr :: [String] -> Char
coolestLtr = mostPopularLetter . foldr (++) []


coolestWord =
  fst
  . maximumBy (\x y -> compare (snd x) (snd y))
  . map (\s -> (head s, length s))
  . group
  . sort
  . foldr (++) []
  . map words
  . map onlyLetters
  where
    onlyLetters =
      filter (\c ->
           isAlpha c
        || isDigit c
        || c == ' '
      )

-- driver
main :: IO ()
main = print $ coolestWord convo
  where
    phone = MkPhone 
      [
        Button '1' "",
        Button '2' "ABC",
        Button '3' "DEF",
        Button '4' "GHI",
        Button '5' "JKL",
        Button '6' "MNO",
        Button '7' "PQRS",
        Button '8' "TUV",
        Button '9' "WXYZ",
        Button '*' "^",
        Button '0' "+ _",
        Button '#' ".,"
      ]
