-- Rewrite map for BinaryTree
-- Using the foldTree you just wrote, rewrite mapTree using foldTree.
-- The absence of an Ord constraint is intentional, you don’t need to use
-- the insert function.

-- datatype
data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

-- previously defined
foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree _ acc Leaf = acc
foldTree f acc (Node left a right) =
  foldTree f (f a (foldTree f acc left)) right

mapTree' :: (a -> b)
  -> BinaryTree a
  -> BinaryTree b
mapTree' f bt =
  foldTree buildTree Leaf bt
    where
      buildTree a b = Node Leaf (f a) b

-- Please note that the above implementation is not correct.
-- It will turn the tree into a linear list.
-- It only serves for the purpose of the exercise.
-- Since the order of the elements is not preserved.

