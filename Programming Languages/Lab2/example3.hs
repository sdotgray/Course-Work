data BST = Empty | Node Int BST BST
	deriving Show
	
{-insert:: Int -> BST -> BST, which takes an Int and a BST and returns a new BST that looks like the original except that a copy of the Int has been inserted into the correct location according to the rules of a binary search tree.
find:: Int -> BST -> Bool, when given an Int and a BST determines whether that Int is present in the BST.
findMax:: BST -> Int, returns the max Int in the BST.
findMin:: BST -> Int, returns the min Int in the BST.
deleteMin:: BST -> BST, creates a new BST that is similar to the original only with the max value removed.
hardest - delete:: Int -> BST -> BST,  creates a new BST that is similar to the original only with the supplied Int removed, if it is present.
fromInts:: [Int] -> BST, creates a BST from a list of Int's where the Int's are added in the order in which they appear in the list.
toInts::  BST -> [Int], returns a list of the elements of the BST in ascending order.
-}