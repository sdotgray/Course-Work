module Main where
import TypeChecker
import Grammar
import Lexer

type OpEnv = [(String,AST)]

-- (remove_var x sigma) computes sigma_x.

remove_var:: String -> OpEnv -> OpEnv
remove_var x [] = []
remove_var x ((y,_):env) | x == y =
    remove_var x env
remove_var x ((y,ast):env) =
    (y,ast) : remove_var x env

-- Substitute an AST for a variable in an AST.

subst_var:: String -> AST -> AST -> AST
subst_var _ _ (Boolean b) = Boolean b
subst_var _ _ (Integer n) = Integer n
subst_var x e (Variable v) | x == v = e
subst_var x e (Variable v) = Variable v
subst_var x e (Plus ast1 ast2) =
    Plus (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Minus ast1 ast2) =
    Minus (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Times ast1 ast2) =
    Times (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Rem ast1 ast2) =
    Rem (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Quot ast1 ast2) =
    Quot (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (And ast1 ast2) =
    And (subst_var x e ast1) (subst_var x e ast2)
--subst_var x e (Not ast) =
--    Not (subst_var x e ast)
subst_var x e (Or ast1 ast2) =
    Or (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Equals ast1 ast2) =
    Equals (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Lt ast1 ast2) =
    Lt (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Gt ast1 ast2) =
    Gt (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (App ast1 ast2) =
    App (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (If ast1 ast2 ast3) =
    If (subst_var x e ast1) (subst_var x e ast2) (subst_var x e ast3)
subst_var x e (Let y ast1 ast2) | y == x =
    Let y (subst_var x e ast1) ast2
subst_var x e (Let y ast1 ast2) =
    Let y (subst_var x e ast1) (subst_var x e ast2)
subst_var x e (Lambda y ast t1 t2) | x == y =
    Lambda y ast t1 t2
subst_var x e (Lambda y ast t1 t2) =
    Lambda y (subst_var x e ast) t1 t2

-- Treat an environment as a variable substitution.

subst:: OpEnv -> AST -> AST
subst [] ast = ast
subst ((x,e):env) ast =
    subst env (subst_var x e ast)
	
-- Less Than and Greater Than functions
	
lessThan:: AST -> AST -> AST
lessThan (Integer n) (Integer m) = Boolean (n < m)
lessThan (Boolean n) (Boolean m) = Boolean (n < m)

greaterThan:: AST -> AST -> AST
greaterThan (Integer n) (Integer m) = Boolean (n > m)
greaterThan (Boolean n) (Boolean m) = Boolean (n > m)

-- Please complete the definition of interpreter.

interpreter:: AST -> OpEnv -> AST
interpreter (Boolean b) _ = Boolean b
interpreter (Integer n) _ = Integer n
interpreter (Variable v) env =
    let
        e = TypeChecker.lookup v env
    in
        interpreter e env
interpreter (Plus ast1 ast2) env = 
			let 
				Integer n1 = interpreter ast1 env
				Integer n2 = interpreter ast2 env
			in
				Integer (n1 + n2)
interpreter (Minus ast1 ast2) env = 
			let 
				Integer n1 = interpreter ast1 env
				Integer n2 = interpreter ast2 env
			in
				Integer (n1 - n2)
interpreter (Times ast1 ast2) env = 
			let 
				Integer n1 = interpreter ast1 env
				Integer n2 = interpreter ast2 env
			in
				Integer (n1 * n2)
interpreter (Quot ast1 ast2) env = 
			let 
				Integer n1 = interpreter ast1 env
				Integer n2 = interpreter ast2 env
			in
				Integer (n1 `quot` n2)
interpreter (Rem ast1 ast2) env = 
			let 
				Integer n1 = interpreter ast1 env
				Integer n2 = interpreter ast2 env
			in
				Integer (n1 `rem` n2)
interpreter (And ast1 ast2) env = 
			let 
				Boolean n1 = interpreter ast1 env
			in
				if (n1 == False)
				then Boolean n1
				else if (n1 == True)
					 then interpreter ast2 env
					 else Boolean False
interpreter (Or ast1 ast2) env = 
			let 
				Boolean n1 = interpreter ast1 env
			in
				if (n1 == True)
				then Boolean n1
				else if (n1 == False)
					 then interpreter ast2 env
					 else Boolean True
interpreter (Equals ast1 ast2) env = 
			let 
				n1 = interpreter ast1 env
				n2 = interpreter ast2 env
			in
				if (n1 == n2)
				then Boolean True
				else Boolean False
interpreter (Gt ast1 ast2) env = interpreter (greaterThan ast1 ast2) env
interpreter (Lt ast1 ast2) env = interpreter (lessThan ast1 ast2) env
interpreter (If ast1 ast2 ast3) env = 
			let 
				n1 = interpreter ast1 env
			in
				if (n1 == Boolean True)
				then interpreter ast2 env
				else interpreter ast3 env
interpreter (Lambda s ast type1 type2) env = Lambda s ast type1 type2
interpreter (Let s ast1 ast2) env = 
			interpreter ast2 [(s,(interpreter ast1 env))]
interpreter (App (Lambda s ast type1 type2) ast2) env = 
			interpreter ast2 [(s,interpreter ast env)]
				
main = do
  s <- getContents
  let ast = parseHaskellito (scanTokens s)
  let t = typeChecker ast []
  let val = interpreter ast []
  print (ast,t,val)  
