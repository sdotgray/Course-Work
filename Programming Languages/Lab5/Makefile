all : Interpreter

Lexer.hs : Lexer.x
	alex Lexer.x

Grammar.hs : Grammar.y
	happy Grammar.y 

Interpreter : Lexer.hs Grammar.hs TypeChecker.hs Interpreter.hs
	ghc --make Interpreter.hs

clean :
	rm -f Interpreter Grammar.hs Lexer.hs *.o *.hi *.info
