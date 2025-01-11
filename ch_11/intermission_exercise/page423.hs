-- Determine how many unique inhabitants each type has.
-- Suggestion: just do the arithmetic unless you want to verify. Writing
-- them out gets tedious quickly.
-- 1.
data Quad =
   One
 | Two
 | Three
 | Four
 deriving (Eq, Show)
 
-- how many different forms can this take?
-- eQuad :: Either Quad Quad
-- Sol: 4 + 4

-- 2. prodQuad :: (Quad, Quad)
-- Sol: 4*4

-- 3. funcQuad :: Quad -> Quad
-- Sol: 4^4

-- 4. prodTBool :: (Bool, Bool, Bool)
-- Sol: 2*2*2

-- 5. gTwo :: Bool -> Bool -> Bool
-- Sol: 2^(2*2)

-- 6. Hint: 5 digit number
-- fTwo :: Bool -> Quad -> Quad
-- Sol: 4^(2*4)
