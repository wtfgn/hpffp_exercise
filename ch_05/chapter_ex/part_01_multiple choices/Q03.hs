-- 3. A function of type [a] -> Int -> a
-- a) takes one argument
-- b) returns one element of type 𝑎 from a list
-- c) must return an Int value
-- d) is completely fictional

-- Solution: b) returns one element of type 𝑎 from a list
-- Because the type varaible a here can be any arbitrary type,
-- so if we specify the return type to be a,
-- the only possible return value is one element of type a from a list.

-- *Note that in Haskell, every function is currified,
-- so strictly speaking, the function of type [a] -> Int -> a
-- can be interpreted as a function that takes ONE arguement of type [a]
-- and returns a function of type Int -> a.