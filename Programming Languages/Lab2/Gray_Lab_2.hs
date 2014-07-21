-- Shannon Gray
-- CMSC 305, Lab 2 
-- Due: Sunday, September 15th, 2013


data BST = Empty | Node Int BST BST
	deriving Show
	
	
insert:: Int -> BST -> BST
insert x Empty = Node x Empty Empty
insert x (Node y lt rt)
	| x < y = Node y (insert x lt) rt
	| x >= y = Node y lt (insert x rt)


find:: Int -> BST -> Bool
find x Empty = False
find x (Node y lt rt)
	| x == y = True
	| x < y = find x lt
	| x > y = find x rt
	
	
findMax:: BST -> Int
findMax Empty = 0
findMax (Node x lt Empty) = x
findMax (Node x left (Node y lt rt))
	| x <= y = findMax (Node y lt rt)
	| otherwise = x

	
findMin:: BST -> Int
findMin Empty = 0
findMin (Node x Empty rt) = x
findMin (Node x (Node y lt rt) right)
	| x >= y = findMin (Node y lt rt)
	| otherwise = x
	
deleteMax:: BST -> BST
deleteMax Empty = Empty
deleteMax (Node x Empty Empty) = Empty
deleteMax (Node x lt Empty) = lt
deleteMax (Node x left (Node y lt rt))
	| x <= y = Node x left (deleteMax (Node y lt rt))
	| x > y = left


deleteMin:: BST -> BST
deleteMin Empty = Empty
deleteMin (Node x Empty Empty) = Empty
deleteMin (Node x Empty rt) = rt
deleteMin (Node x (Node y lt rt) right)
	| x > y = Node x (deleteMin (Node y lt rt)) right
	| x <= y = right


delete:: Int -> BST -> BST
delete x Empty = Empty
delete x (Node y lt rt)
	| x == y = removeRoot (Node y lt rt)
	| x < y = Node y (delete x lt) rt
	| x > y = Node y lt (delete x rt)

	
removeRoot:: BST -> BST
removeRoot Empty = Empty
removeRoot (Node x Empty rt) = rt
removeRoot (Node x lt Empty) = lt
removeRoot (Node x lt rt) = (Node (findMin rt) lt rt)
	

fromInts:: [Int] -> BST
fromInts [] = Empty
fromInts [x] = insert x Empty
fromInts list = insert (last list) (fromInts (init list))


toInts::  BST -> [Int]
toInts Empty = []
toInts (Node x Empty Empty) = [x]
toInts tree = findMin tree : toInts (deleteMin tree)
