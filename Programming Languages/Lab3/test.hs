Int n, m

merge:: [Int] -> [Int] -> [Int]
merge [] [] = []
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys)
	| x < y = x : merge xs (y:ys)
	| otherwise = y : merge (x:xs) ys

{- hello -}
String

"I like cats" ++ "and dogs"
