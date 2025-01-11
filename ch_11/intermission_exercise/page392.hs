data Example = MakeExample deriving Show

-- 1. You can query the type of a value in GHCi with the :type command, also abbreviated :t. Example:
-- Prelude> :t False
-- False :: Bool
-- What is the type of data constructor MakeExample?
-- What happens when you request the type of Example?
-- nullary data constructor

-- 2. What if you try :info on Example in GHCi?
-- Can you determine what typeclass instances
-- are defined for the Example type using
-- :info in GHCi?

-- 3. Try making a new datatype like Example
-- but with a single type argument added to MakeExample,
-- such as Int. What has changed
-- when you query MakeExample with :type in GHCi?
