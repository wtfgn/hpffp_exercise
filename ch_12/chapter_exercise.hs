import Data.List

main :: IO ()
main = do
  let text = "eious"
  putStrLn $ show $  treeBuild 1


-- question 1
replaceThe :: String -> String
replaceThe = intercalate " " . replaceWithA . words
  where
    replaceWithA =
      foldr (\x acc -> if x == "the" then "a":acc else x:acc) []

-- question 2
countTheBeforeVowel :: String -> Integer
countTheBeforeVowel = go . words
  where
    go [] = 0
    go [x] = 0
    go (x:y:xs) = count + go xs
      where
        isThe = x == "the"
        isFirstLetterVowel = (head y) `elem` "aeiou"
        count =
          if (isThe && isFirstLetterVowel)
          then 1
          else 0

-- question 3
countVowels :: String -> Integer
countVowels = foldr addVowelCount 0
  where
    isVowel = flip elem $ "aeiou"
    addVowelCount x acc =
     if isVowel x
     then 1 + acc
     else acc
     
-- validate the word
newtype Word' =
  Word' String
  deriving (Eq, Show)
  
mkWord :: String -> Maybe Word'
mkWord s =
  if vowelsCount > consonantsCount
  then Nothing
  else Just $ Word' s
    where
      vowels = "aeiou"
      charCount = fromIntegral . length $ s
      vowelsCount = countVowels s
      consonantsCount = charCount - vowelsCount
      
-- it's only natural
-- As natural as any competitive bodybuilder
data Nat =
  Zero
  | Succ Nat
  deriving (Eq, Show)
  
natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ nat) = 1 + natToInteger nat

integerToNat :: Integer -> Maybe Nat
integerToNat n
  | n < 0 = Nothing
  | n == 0 = Just Zero
  | n > 0 = Just (Succ x)
    where
      (Just x) = integerToNat $ n-1
      
      
-- small library for Maybe
isJust :: Maybe a -> Bool
isJust Nothing = False
isJust _ = True
      
isNothing :: Maybe a -> Bool
isNothing = not . isJust

mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee fallback _ Nothing = fallback
mayybee _ f (Just a) = f a

fromMaybe :: a -> Maybe a -> a
fromMaybe fallback Nothing = fallback
fromMaybe _ (Just a) = a

listToMaybe :: [a] -> Maybe a
listToMaybe (x:_) = Just x
listToMaybe [] = Nothing

maybeToList :: Maybe a -> [a]
maybeToList Nothing  = []
maybeToList (Just a) = [a]

catMaybes :: [Maybe a] -> [a]
catMaybes = foldr catMaybe []
  where
    catMaybe Nothing acc = acc
    catMaybe (Just a) acc = a:acc
    
flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe [] = Just []
flipMaybe (Nothing:_) = Nothing
flipMaybe ((Just x):xs) =
  case flipMaybe xs of
    Just ys -> Just $ x:ys
    _ -> Nothing
    
-- Small library for Either
lefts' :: [Either a b] -> [a]
lefts' = foldr accLeft []
  where
    accLeft (Left a) acc = a:acc
    accLeft _ acc = acc
    
rights' :: [Either a b] -> [b]
rights' = foldr accRight []
  where
    accRight (Right b) acc = b:acc
    accRight _ acc = acc
    
partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' = foldr partitionEither ([], [])
  where
    partitionEither (Left a) (lacc, racc) = (a:lacc, racc)
    partitionEither (Right b) (lacc, racc) = (lacc, b:racc)
    
eitherMaybe' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe' _ (Left _) = Nothing
eitherMaybe' f (Right b) = Just $ f b

either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' f _ (Left a) = f a
either' _ g (Right b) = g b

eitherMaybe'' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe'' f e = either (\_ -> Nothing) (\b -> Just $ f b) e

-- write your own iterate and unfoldr
myIterate :: (a -> a) -> a -> [a]
myIterate f n = n : (myIterate f $ f n)

myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f ini =
  case (f ini) of
    Just (a, b) -> a : (myUnfoldr f b)
    Nothing -> []
    
betterIterate :: (a -> a) -> a -> [a]
betterIterate f x = myUnfoldr (\b -> Just (b, f b)) x
    
-- Finally something other than a list!
data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

unfold :: (a -> Maybe (a, b, a)) -> a -> BinaryTree b
unfold f ini =
  case (f ini) of
    Just (a1, b, a2) -> Node (unfold f a1) b (unfold f a2)
    Nothing -> Leaf
    
treeBuild :: Integer -> BinaryTree Integer
treeBuild n = unfold extendBranch n 
  where
    extendBranch a
      | a <= 0 = Nothing
      | otherwise = Just $ (a-1, n-a, a-1)