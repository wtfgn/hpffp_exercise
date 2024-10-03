-- 3. Categorize each component of the type signature
-- f :: Enum b => a -> b -> C

-- Solution:
-- 'a' is a fully polymorphic type variable, since it is lowercase.
-- 'b' is a constrained polymorphic type variable, since it is lowercase and has a typeclass constraint.
-- 'C' is a concrete (nullary) type constructor, since it is uppercase.