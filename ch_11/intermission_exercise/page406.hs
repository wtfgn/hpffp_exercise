-- 1. Given the type
-- data FlowerType = 
--     Gardenia
--   | Daisy
--   | Rose
--   | Lilac
--   deriving Show
  
-- type Gardener = String

-- data Garden =
--   Garden Gardener FlowerType
--   deriving Show
  
-- What is the normal form of Garden?
-- Sol:
type Gardener = String
data Garden' = 
    Gardenia Gardener
  | Daisy Gardener
  | Rose Gardener
  | Lilac Gardener
  deriving Show

main :: IO()
main = return ()
