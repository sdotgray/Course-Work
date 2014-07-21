{
-- Shannon Gray
-- CMSC 305, Lab 3
-- Due: Sunday, October 6, 2013
module Main (main) where
}

%wrapper "basic" -- this will create a program that takes a string and returns a list of tokens

$digit = [0-9]    -- Digits
$alpha = [a-zA-Z] -- Alphabetic characters
$symbol = [\!\#\$\%\&\*\+\.\/\<\=\>\?\@\\\^\|\-\~\_\:\"\'\(\)\,\;\[\]\`\{\}\\\\]
$graphic = [$alpha $symbol $digit]
@string  = [$graphic # [\"]] | " " | ""
@nestedComment = [$graphic # [\-\}]]

@type = 
	String|Int|Char|Float|Bool|Integer|Double
	
@keyword = 
	as|case|class|data|default|deriving|do|else|for|forall|
	foreign|hiding|if|import|in|infix|infixl|infixr|instance|
	let|module|newtype|of|qualified|then|type|where

	
tokens :-
  $white+ ; -- given any amount of whitespace, do nothing
  "--".*  ; --comments, .* means all chars except for return
  "{-".*		{\s -> NCommentStart}--{\s -> NCOMMENT s}
  @type		{\s -> TYPE s}
  @keyword		{\s -> KEYWORD s}
  True | False		{\s -> BOOL (read s)}
  $digit+		{\s -> INTVAL (read s)}
  $alpha [$alpha]*	{\s -> VAR s}
  \" @string+ \"		{\s -> STRING s}
  
  "("		{\s -> OpenParen}
  ")"		{\s -> CloseParen}
  ";"		{\s -> SemiColon}
  "{"		{\s -> OpenCurly}
  "}"		{\s -> CloseCurly}
  "["		{\s -> OpenSquare}
  "]"		{\s -> CloseSquare}
  ","		{\s -> Comma}
  "_"		{\s -> Underscore}
  "`"		{\s -> BackQuote}
  ".."		{\s -> DotDot}
  "::"		{\s -> DoubleColon}
  "\\"		{\s -> Backslash}
  "|"		{\s -> VBar}
  "<-"		{\s -> LeftArrow}
  "->"		{\s -> RightArrow} 
  "@"		{\s -> At}
  "~"		{\s -> Tilde}
  "=>"		{\s -> DoubleArrow} 
  "!"		{\s -> Exclamation}
  "++"		{\s -> Append}
  
  $symbol		{ \s -> SYM (head s) }
{

-- The Token type
data Token =
	SYM Char | VAR String | INTVAL Int | BOOL Bool |
	KEYWORD String | TYPE String | STRING String | 
	NCOMMENT String |
	
	OpenParen | CloseParen | SemiColon | OpenCurly |
    CloseCurly | OpenSquare | CloseSquare | Comma |
	Underscore | BackQuote | NCommentStart |
	
	DotDot | DoubleColon | Backslash |
	VBar | LeftArrow | RightArrow | At | Tilde | DoubleArrow |
	Exclamation | Append
	
    deriving (Eq,Show)
	

main = do -- how you do input and output
  s <- getContents -- assignment
  print (alexScanTokens s) -- printout the list we get
}  