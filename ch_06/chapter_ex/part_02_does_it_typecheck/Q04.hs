-- 4. Does the following typecheck? If not, why not?
type Subject = String

type Verb = String

type Object = String

data Sentence
  = Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"

s2 = Sentence "Julie" "loves" "dogs"

-- Solution:
-- Yes, it typechecks.