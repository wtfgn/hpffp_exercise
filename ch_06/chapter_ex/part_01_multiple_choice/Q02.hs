-- 2. The typeclass Ord
-- a) allows any two values to be compared
-- b) is a subclass of Eq
-- c) is a superclass of Eq
-- d) has no instance for Bool

-- Solution:
-- b) is a subclass of Eq

-- Why not a) allows any two values to be compared?
-- Because the typeclass Ord allows any two values to be compared,
-- but only if they are of the same type.