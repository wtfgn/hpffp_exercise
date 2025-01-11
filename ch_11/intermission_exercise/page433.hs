-- Write foldr for BinaryTree
-- Given the definition of BinaryTree we have provided,
-- write a catamorphism forthe binary trees.

-- datatype
data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

-- any traversal order is fine
foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree _ acc Leaf = acc
foldTree f acc (Node left a right) =
  foldTree f (f a (foldTree f acc left)) right