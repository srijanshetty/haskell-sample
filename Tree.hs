data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Eq, Ord)

treeInsert::(Ord a)=>a->Tree a->Tree a
treeInsert a EmptyTree = Node a EmptyTree EmptyTree
treeInsert x t@(Node a left right)
    | x == a = t
    | x < a = Node a (treeInsert x left) right
    | x > a = Node a left (treeInsert x right)

inTree::(Ord a)=>a->Tree a->Bool
inTree a EmptyTree = False
inTree x (Node a left right)
    | x == a = True
    | x < a = inTree x left
    | x > a = inTree x right

fromList::(Ord a)=>[a]->Tree a
fromList = foldr treeInsert EmptyTree 

inPrint::(Show a)=>Tree a->String
inPrint EmptyTree = ""
inPrint (Node a left right) = inPrint left ++ show a ++ inPrint right
