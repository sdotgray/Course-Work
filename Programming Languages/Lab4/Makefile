all : Parser

Lexer.hs : Lexer.x
	alex Lexer.x

Grammar.hs : Grammar.y
	happy Grammar.y 

Parser : Lexer.hs Grammar.hs Parser.hs
	ghc --make Parser.hs

clean :
	rm -f Parser Grammar.hs Lexer.hs *.o *.hi *.info
