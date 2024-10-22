-- Will it blow up?
-- 1. Will the following expression return a value or be ⊥?
-- [x^y | x <- [1..5], y <- [2, undefined]]
-- 2. take 1 $ [x^y | x <- [1..5], y <- [2, undefined]]
-- 3. Will the following expression return a value?
-- sum [1, undefined, 3]
-- 4. length [1, 2, undefined]
-- 5. length $ [1, 2, 3] ++ undefined
-- 6. take 1 $ filter even [1, 2, 3, undefined]
-- 7. take 1 $ filter even [1, 3, undefined]
-- 8. take 1 $ filter odd [1, 3, undefined]
-- 9. take 2 $ filter odd [1, 3, undefined]
-- 10. take 3 $ filter odd [1, 3, undefined]

-- Intermission: Is it in normal form?
-- For each expression below, determine whether it’s in:
-- 1. normal form, which implies weak head normal form;
-- 2. weak head normal form only; or,
-- 3. neither.
-- Remember that an expression cannot be in normal form or weak
-- head normal form if the outermost part of the expression isn’t a data
-- constructor. It can’t be in normal form if any part of the expression is
-- unevaluated.
-- 1. [1, 2, 3, 4, 5]
-- 2. 1 : 2 : 3 : 4 : _
-- 3. enumFromTo 1 10
-- 4. length [1, 2, 3, 4, 5]
-- 5. sum (enumFromTo 1 10)
-- 6. ['a'..'m'] ++ ['n'..'z']
-- 7. (_, 'b')

-- Solution:
-- ** PLEASE NOTE: **
-- Strictly speaking, all the expressions are not evaluated until
-- they need to be. However, if we type them into the REPL,
-- it will show the evaluated form of the expression which
-- uses the print function to display the result. This is why
-- all the expressions below are in normal form.

-- Will it blow up?
-- 1. ⊥
-- Because when we try to evaluate 1^undefined, it will blow up.

-- 2. a value
-- Because when we take 1 from the list, it will only evaluate the
-- first value of the list, which is 1^2 = 1.

-- 3. ⊥
-- Because the sum function will uss the (+) function to add the
-- numbers in the list. The (+) function is strict, so it will
-- evaluate the arguments before adding them.
-- So, sum [1, undefined, 3] = 1 + undefined + 3 = ⊥

-- 4. a value
-- Because the length function will only evaluate the list to count
-- the number of elements in it. It will not evaluate the elements
-- themselves.
-- Spine is evaluated, but the elements are not.

-- 5. ⊥
-- No [] constructor at the end of the list.
-- length function has to evaluate the spine of the list to count
-- the number of elements in it. But the spine is not complete
-- because of the undefined value at the end of the list.
-- So, length $ [1, 2, 3] ++ undefined = ⊥

-- 6. a value

-- 7. ⊥

-- 8. a value

-- 9. a value


-- Is it in normal form?
-- 1. normal form
-- 2. weak head normal form
-- 3. neither
-- 4. neither
-- 5. neither
-- 6. neither
-- 7. weak head normal form