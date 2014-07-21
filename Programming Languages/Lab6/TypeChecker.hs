module TypeChecker where
import Grammar
import Lexer

-- Type alias for type environments.

type TypeEnv = [(String,TypeExp)]

-- Function for retrieving types of variables from the environment.

lookup::String -> [(String,a)] -> a
lookup s  []                    = error ("Type " ++ s ++ " not defined in the current environment")
lookup s1 ((s2,t):l) | s1 == s2 = t
lookup s  (_:l)                 = TypeChecker.lookup s l

-- Please complete the definition of typeChecker for the rest of the abstract syntax.

typeChecker:: AST -> TypeEnv -> TypeExp
typeChecker (Boolean _) _ = BoolType
typeChecker (Integer _) _ = IntType
typeChecker (Variable s) env = TypeChecker.lookup s env
typeChecker (Plus ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == IntType) && (t2 == IntType)
				then IntType
				else error ("Operation Plus (+) requires two Int arguments.")
typeChecker (Minus ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == IntType) && (t2 == IntType)
				then IntType
				else error ("Operation Minus (-) requires two Int arguments.")
typeChecker (Times ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == IntType) && (t2 == IntType)
				then IntType
				else error ("Operation Times (*) requires two Int arguments.")
typeChecker (Quot ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == IntType) && (t2 == IntType)
				then IntType
				else error ("Operation Quot (divide) requires two Int arguments.")
typeChecker (Rem ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == IntType) && (t2 == IntType)
				then IntType
				else error ("Operation Rem (%) requires two Int arguments.")
typeChecker (And ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == BoolType) && (t2 == BoolType)
				then BoolType
				else error ("Operation And (&&) requires two Bool arguments.")
typeChecker (Or ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == BoolType) && (t2 == BoolType)
				then BoolType
				else error ("Operation Or (||) requires two Bool arguments.")
typeChecker (Not ast1) env = 
			let 
				t1 = typeChecker ast1 env
			in
				if (t1 == BoolType)
				then BoolType
				else error ("Operation Not (not) requires a Bool argument.")
typeChecker (Equals ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == t2)
				then BoolType
				else error  ("Operation Equals (==) requires two arguments of the same type.")
typeChecker (Gt ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == t2)
				then BoolType
				else error  ("Operation Greater Than (>) requires two arguments of the same type.")
typeChecker (Lt ast1 ast2) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
			in
				if (t1 == t2)
				then BoolType
				else error  ("Operation Less Than (<) requires two arguments of the same type.")
typeChecker (Let s ast1 ast2) env
			| typeChecker ast2 [(s,typeChecker ast1 env)] == BoolType = BoolType
			| typeChecker ast2 [(s,typeChecker ast1 env)] == IntType = IntType
			| otherwise = error  ("Operation Let requires two arguments of the same type.")
typeChecker (If ast1 ast2 ast3) env = 
			let 
				t1 = typeChecker ast1 env
				t2 = typeChecker ast2 env
				t3 = typeChecker ast3 env
			in
				if (t1 == BoolType) && (t2 == t3)
				then t2
				else error ("Operation If requires a BoolType and two following arguments of the same type.")
typeChecker (Lambda s ast type1 type2) env = 
			if (type1 == BoolType)
			then
				let 
					t1 = typeChecker ast [(s,BoolType)]
				in
					if (t1 == BoolType)
					then Arrow type1 type2
					else error ("Operation Lambda requires initial type and end type to match the given types.")
			else if (type1 == IntType)
				 then
					 let 
						t1 = typeChecker ast [(s,IntType)]
					 in
						if (t1 == IntType)
						then Arrow type1 type2
						else error ("Operation Lambda requires initial type and end type to match the given types.")
				 else error ("Operation Lambda requires initial type and end type to match the given types.")
typeChecker (App (Lambda s ast type1 type2) ast2) env = 
			let 
				t1 = typeChecker (Lambda s ast type1 type2) env
				t2 = typeChecker ast2 env
			in
				if (t1 == Arrow type1 type2) && (t2 == type1)
				then type2
				else error ("Operation App requires a Lambda expression and an argument matching the starting type of the Arrow.")
				
