-- Given the following definitions, tell us what value results from further
-- applications.
cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y
-- -- fill in the types
flippy = flip cattyConny
appedCatty = cattyConny "woops"
frappe = flippy "haha"
-- 1. What is the value of appedCatty "woohoo!" ? Try to determine
-- the answer for yourself, then test in the REPL.
-- 2. frappe "1"
-- 3. frappe (appedCatty "2")
-- 4. appedCatty (frappe "blue")
-- 5. cattyConny (frappe "pink")
-- (cattyConny "green" (appedCatty "blue"))
-- 6. cattyConny (flippy "Pugs" "are") "awesome"

-- Solution
-- 1.
-- "woops mrow woohoo!"

-- 2.
-- "1 mrow haha"

-- 3.
-- First we evaluate appedCatty "2":
-- => cattyConny "woops" "2"
-- => "woops mrow 2"
-- Then we evaluate frappe (appedCatty "2"):
-- => flippy "haha" "woops mrow 2"
-- => cattyConny "woops mrow 2" "haha"
-- => "woops mrow 2 mrow haha"

-- 4.
-- First we evaluate frappe "blue"
-- => flippy "haha" "blue"
-- => cattyConny "blue" "haha"
-- => "blue mrow haha"
-- Then we evaluate appedCatty (frappe "blue")
-- => cattyConny "woops" "blue mrow haha"
-- => "woops mrow blue mrow haha"

-- 5.
-- First we evaluate cattyConny (frappe "pink")
-- because application has higher precedence.
-- => cattyConny "pink mrow haha"
-- Now it is partially applied, so we evaluate the rest:
-- Now we evaluate cattyConny "green" (appedCatty "blue")
-- => cattyConny "green" "woops mrow blue"
-- => "green mrow woops mrow blue"
-- => Now we can substitute this back into the previous expression:
-- => cattyConny "pink mrow haha" "green mrow woops mrow blue"
-- => "pink mrow haha mrow green mrow woops mrow blue"

-- 6.
-- First we evaluate flippy "Pugs" "are"
-- => cattyConny "are" "Pugs"
-- => "are mrow Pugs"
-- Now we evaluate cattyConny "are mrow Pugs" "awesome"
-- => "are mrow Pugs mrow awesome"