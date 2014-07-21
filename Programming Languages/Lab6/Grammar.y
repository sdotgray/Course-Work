{
-- Shannon Gray
-- CMSC 305, Lab 4
-- Due: Sunday, October 27, 2013

--NOTES:
--You must alter/augment (a) the token aliases, (b) the AST datatype and associated semantic actions, and (c) the precedence directives (hardest) (resolve all --the reduce-reduce and shift-reduce conflicts, look in Grammar.info file for these) (add function application last).\
--make the file, then use happy -i Grammar.y to create the Grammar.info file.
--run the test with: Parser < test.hs > out.txt

module Grammar where
import Lexer
}

%name parseHaskellito
%tokentype {Token}
%error {parserError}

%token
	True    	{BOOLVAL True}
	False   	{BOOLVAL False}
    int 		{INTVAL $$}
    let 		{LET}
	if      	{IF}
    then    	{THEN}
    else    	{ELSE}
    '=' 		{BIND}
    in  		{IN}
	'\\'		{LAMBDA}
	'->'      	{ARROW}
	'::'      	{COLONS}
	'=='      	{EQUALS}
	'&&'      	{AND}
	'||'      	{OR}
	not     	{NOT}
    '+' 		{PLUS}
    '-' 		{MINUS}
    '*' 		{TIMES}
	quot    	{QUOT}
	rem     	{REM}
	'<='      	{LTEQ}
	'>='      	{GTEQ}
	'\='       	{NOTEQ}
	'<'       	{Lexer.LT}
	'>'       	{Lexer.GT}
	Bool    	{BOOL}
	Int     	{INT}
	'('       	{LPAREN}
	')'       	{RPAREN}
    var 		{VAR $$}

	
--lowest precedence	

%left True False int var
%left '=' '::'
%left not
%left in
%left let
%left else
%left then
%left if
%left '\\' '->'
%left '||'
%left '&&'
%left '=='
%nonassoc '<' '<=' '>' '>=' '\='
%left NEG
%left '+' '-'
%left '*' quot rem
%left '('
%right ')'
%left APP


--highest precedence

%%


AST : True						{Boolean True}
	| False						{Boolean False}
	| int                    	{Integer $1}
    | let var '=' AST in AST 	{Let $2 $4 $6}
	| if AST then AST else AST	{If $2 $4 $6}
	| '(' '\\' var '->' AST ')' '::' TypeExp '->' TypeExp		{Lambda $3 $5 $8 $10}
	| AST AST %prec APP			{App $1 $2}
	| AST '==' AST				{Equals $1 $3}
	| AST '&&' AST				{And $1 $3}
	| AST '||' AST				{Or $1 $3}
	| not AST					{Not $2}
    | AST '+' AST            	{Plus $1 $3}
    | AST '-' AST            	{Minus $1 $3}
    | AST '*' AST            	{Times $1 $3}
	| AST quot AST				{Quot $1 $3}
	| AST rem AST				{Rem $1 $3}
	| '-' AST %prec NEG			{Minus (Integer 0) $2}
	| AST '<=' AST				{Or (Lt $1 $3) (Equals $1 $3)}
	| AST '>=' AST				{Or (Gt $1 $3) (Equals $1 $3)}
	| AST '\=' AST				{Not (Equals $1 $3)}
	| AST '<' AST				{Lt $1 $3}
	| AST '>' AST				{Gt $1 $3}
	| '(' AST ')'				{Parens $2}
    | var                    	{Variable $1}
	
TypeExp : TypeExp '->' TypeExp		{Arrow $1 $3}
	| '(' TypeExp ')'				{Paren $2}
	| Bool							{BoolType}
	| Int							{IntType}
	
{

parserError:: [Token] -> a
parserError _ = error "Parse Error"

data AST = Boolean Bool
		 | Integer Int
         | Let String AST AST
		 | If AST AST AST
		 | Lambda String AST TypeExp TypeExp
		 | App AST AST
		 | Equals AST AST
		 | And AST AST
		 | Or AST AST
		 | Not AST
         | Plus AST AST
         | Minus AST AST
         | Times AST AST
		 | Quot AST AST
		 | Rem AST AST
		 | Lt AST AST
		 | Gt AST AST
		 | Parens AST
         | Variable String
         deriving (Eq,Show)
		 
data TypeExp = BoolType
		 | IntType
		 | Arrow TypeExp TypeExp
		 | Paren TypeExp
		 deriving (Eq,Show)


}
