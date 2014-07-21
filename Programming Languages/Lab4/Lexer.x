{
module Lexer where
}

%wrapper "basic"

$digit = [0-9]    -- Digits
$alpha = [a-zA-Z] -- Alphabetic characters
$alphanum = [a-zA-Z0-9] -- Alphanumeric characters

tokens :-
  $white+ ;
  "--".*  ;
  "True"    {\s -> Lexer.BOOLVAL True}
  "False"   {\s -> Lexer.BOOLVAL False}
  $digit+   {\s -> Lexer.INTVAL (read s)}
  "if"      {\s -> Lexer.IF}
  "then"    {\s -> Lexer.THEN}
  "else"     {\s -> Lexer.ELSE}
  "let"     {\s -> Lexer.LET}
  "="       {\s -> Lexer.BIND}
  "in"      {\s -> Lexer.IN}
  "\"  		{\s -> Lexer.LAMBDA}
  "->"      {\s -> Lexer.ARROW}
  "::"      {\s -> Lexer.COLONS}
  "=="      {\s -> Lexer.EQUALS}
  "&&"      {\s -> Lexer.AND}
  "||"      {\s -> Lexer.OR}
  "not"     {\s -> Lexer.NOT}
  "+"       {\s -> Lexer.PLUS}
  "-"       {\s -> Lexer.MINUS}
  "*"       {\s -> Lexer.TIMES}
  "quot"    {\s -> Lexer.QUOT}
  "rem"     {\s -> Lexer.REM}
  "<="      {\s -> Lexer.LTEQ}
  ">="      {\s -> Lexer.GTEQ}
  "\="   {\s -> Lexer.NOTEQ}
  "<"       {\s -> Lexer.LT}
  ">"       {\s -> Lexer.GT}
  "Bool"    {\s -> Lexer.BOOL}
  "Int"     {\s -> Lexer.INT}
  "("       {\s -> Lexer.LPAREN}
  ")"       {\s -> Lexer.RPAREN}
  $alpha$alphanum* {\s -> Lexer.VAR s}


{

-- The Token type
data Token = SPACE |
    BOOLVAL Bool |
    INTVAL Int |
    IF |
    THEN |
    ELSE |
    LET |
    BIND |
    IN |
    LAMBDA |
    ARROW |
    COLONS |
    EQUALS |
    AND |
    OR |
    NOT |
    PLUS |
    MINUS |
    TIMES |
    QUOT |
    REM |
    LTEQ |
    GTEQ |
    NOTEQ |
    LT |
    GT |
    BOOL |
    INT |
    LPAREN |
    RPAREN |
    VAR String
    deriving (Eq,Show)

scanTokens = alexScanTokens
}