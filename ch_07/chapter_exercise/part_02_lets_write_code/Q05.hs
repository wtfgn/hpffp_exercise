-- 5. Next, write a pointfree version of roundTrip.
-- roundTrip :: (Show a, Read a) => a -> a
-- roundTrip a = read (show a)
-- main = do
--   print (roundTrip 4)
--   print (id 4)

-- Solution:
roundTrip :: (Show a, Read a) => a -> a
roundTrip = read . show