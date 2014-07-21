-- Shannon Gray 
-- CMSC 305, Lab 1 
-- Due: Sunday, September 8th, 2013

fact:: Int->Int
fact n = if n<=0
         then 1
         else n*fact(n-1)
		 
		 
areaOfCircle:: Float -> Float
areaOfCircle a = pi * a^2


quadRoot:: Float -> Float -> Float -> Float
quadRoot a b c
	| (b**2 - 4*a*c) >= 0 = (-b + sqrt(b^2 - 4*a*c))/(2*a)
	| otherwise = 0

	
permutations:: (Int, Int) -> Int
permutations(n, m) = (fact n) `div` fact (n-m)


combinations:: (Int, Int) -> Int
combinations(n, m) = ((fact n) `div` ((fact m)*(fact (n-m))))


merge:: [Int] -> [Int] -> [Int]
merge [] [] = []
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys)
	| x < y = x : merge xs (y:ys)
	| otherwise = y : merge (x:xs) ys

	
squareAll:: [Float] -> [Float]
squareAll [] = []
squareAll [x] = [x^2]
squareAll (x:xs) = x^2 : squareAll xs


filterBelow:: Int -> [Int] -> [Int]
filterBelow x [] = []
filterBelow x [y]
	| x > y = [y]
	| otherwise = []
filterBelow x (y:ys)
	| x > y = y : filterBelow x ys
	| otherwise = filterBelow x ys

	
isSubList:: [Int] -> [Int] -> Bool 
isSubList [] xs = True
isSubList xs [] = False
isSubList [x] [y]
	| x == y = True
	|otherwise = False
isSubList (x:xs) y
	| x `elem` y = isSubList xs y
	|otherwise = False

