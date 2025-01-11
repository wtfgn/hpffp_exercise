-- While we haven’t explicitly described the rules for calculating the
-- cardinality of datatypes yet, you might already have an idea of how
-- to do it for simple datatypes with nullary constructors. Try not to
-- overthink these exercises – you can probably intuitively grasp what
-- the cardinality is based just on what you know

-- 1. data PugType = PugData
-- 1 (A constant data)

-- 2. For this one, recall that Bool is also defined with the |:
-- data Airline =
--   PapuAir
-- | CatapultsR'Us
-- | TakeYourChancesUnited
-- 3

-- 3. Given what we know about Int8, what’s the cardinality of Int16?
-- 2^16

-- 4. Use the REPL and maxBound and minBound to examine Int and
-- Integer. What can you say about the cardinality of those types?
-- Int:
-- Integer: 

-- 5. Extra credit (impress your friends!):
-- What’s the connection between the 8 in Int8
-- and that type’s cardinality of 256?
-- The number 8 means the number of bits needed
-- to represents a data of type Int8
-- With 8 bits, you can at most represent
-- 2^8 different integers, ranging from -128 to 127
