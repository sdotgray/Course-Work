data IntList = Nil | List Int IntList
	deriving Show

bmap::(Int -> Int) -> IntList -> IntList
bmap f Nil = Nil
bmap f (List n l) = List (f n) (bmap f l)

fact::Int -> Int
fact n | n <= 0 = 1
fact n = n * fact(n-1)

makeIntList::[Int] -> IntList
makeIntList [] = Nil
makeIntList (a:l) = List a (makeIntList l)

dumpIntList::IntList -> [Int]
dumpIntList Nil = []
dumpIntList (List a l) = a : (dumpIntList l)

