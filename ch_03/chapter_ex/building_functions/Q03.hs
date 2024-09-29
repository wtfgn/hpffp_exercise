-- 3. Write a function of type String -> Char which returns the third
-- character in a String. Remember to give the function a name
-- and apply it to a variable, not a specific String, so that it could
-- be reused for different String inputs, as demonstrated (feel free
-- to name the function something else. Be sure to fill in the type
-- signature and fill in the function definition after the equals sign):
-- thirdLetter ::
-- thirdLetter x =
-- -- If you apply your function to this value:
-- "Curry is awesome"
-- -- Your function should return
-- `r'
-- Note that programming languages conventionally start indexing
-- things by zero, so getting the zeroth index of a string will get you
-- the first letter. Accordingly, indexing with 3 will actually get you
-- the fourth. Keep this in mind as you write this function.


-- Solution:
thirdLetter:: String -> Char
thirdLetter = (!! 2)