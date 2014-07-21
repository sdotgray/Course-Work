data FloatOption = NONE | SOME Float
	deriving Show
	
quadRoot::Float -> Float -> FloatOption
quadRoot 0 b c = SOME -c / b
quadRoot a b c | b^2 - 4 * a * c < 0 = NONE
quadRoot a b c = SOME ((-b + sqrt(b^2 - 4*a*c))/(2*a))