-- 2. data A
-- data B
-- data C
-- q :: A -> B
-- q = undefined
-- w :: B -> C
-- w = undefined
-- e :: A -> C
-- e = ???

-- Solution:
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e x = w (q x)