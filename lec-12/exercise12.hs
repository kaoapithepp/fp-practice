data Tree a =
    Empty
    | Node (Tree a) a (Tree a)
    | Leaf a
    deriving (Show)
data NAryTree a = N a [NAryTree a] deriving (Show)

map' f Empty = Empty
map' f (Leaf a) = Leaf (f a)
map' f (Node l h r) = Node (map' f l) (f h) (map' f r)

tFoldr f z Empty = z
tFoldr f z (Leaf a) = f a z
tFoldr f z (Node l h r) = tFoldr f (f h (tFoldr f z r)) l


height Empty = 0
height (Leaf a) = 1
height (Node l _ r) = 1 + max(height l) (height r)

isBST Empty = True
isBST (Leaf a) = True
is (Node l h r) = isBST r && isBST l && check (>h) l && check (<h) r

check f Empty = True
check f (Leaf h)
    | f h = False
    | otherwise = True
check f (Node l h r)
    | f h = False
    | otherwise = True

inOrder Empty = []
inOrder (Leaf a) = [a]
inOrder (Node l h r) = inOrder l ++ [h] ++ inOrder r

postOrder Empty = []
postOrder (Leaf a) = [a]
postOrder (Node l h r) = inOrder l ++ [h] ++ inOrder r

preOrder Empty = []
preOrder (Node l h r) = [h] ++ preOrder l ++ preOrder r