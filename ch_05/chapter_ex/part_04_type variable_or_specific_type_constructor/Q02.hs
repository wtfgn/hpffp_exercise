-- 2. Categorize each component of the type signature as described
-- in the previous example.
-- f :: zed -> Zed -> Blah

-- Solution:
-- 'zed' is a fully polymorphic type variable, since it is lowercase.
-- 'Zed' is a concrete type constructor, since it is uppercase.
-- 'Blah' is a concrete (nullary) type constructor, since it is uppercase.