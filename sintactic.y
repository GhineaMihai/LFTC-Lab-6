%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define YYDEBUG 1

#define TIP_INT 1
#define TIP_REAL 2
#define TIP_CAR 3

extern int yylex();
double stiva[20];
int sp;
extern void yyerror(char* s);
void push(double x)
{ stiva[sp++]=x; }

double pop()
{ return stiva[--sp]; }

%}

%union {
  	int l_val;
	char *p_val;
}

%token VOID
%token WHILE
%token STATIC
%token SHORT
%token READ
%token RETURN
%token INT
%token MAIN
%token STRING
%token PRINT
%token BREAK
%token CHAR
%token CONTINUE
%token DO
%token DOUBLE
%token ELSE
%token FLOAT
%token IF
%token LONG
%token DIGIT
%token NO
%token NC
%token CH
%token ST
%token ID
%token FL
%token SEP
%token OP
%token CURLY_OPEN
%token CURLY_CLOSED
%token PAR_OPEN
%token PAR_CLOSED
%token ATRIB
%token NEG
%token EQ
%token LE
%token GE
%token AND
%token OR
%token DIF
%token L
%token G

%%
program:	INT MAIN PAR_OPEN PAR_CLOSED CURLY_OPEN statementlist CURLY_CLOSED
		;
statementlist:	statement ';'
		| statement ';' statementlist
		;
statement:	declaration
		| arraydeclaration
		| simplestatement
		| structstatement
		;
declaration:	type ID
		;
type:		primarytypes 
		| arraytypes
		;
primarytypes:	INT
		| LONG
		| FLOAT
		| DOUBLE
		| SHORT
		| CHAR
		;
arraytypes:	primarytypes '[' NO ']' | primarytypes '[' DIGIT ']'
		;
arraydeclaration:	type ID ATRIB CURLY_OPEN array CURLY_CLOSED
		;
array:		term';' 
		| term','array
		;
term:		ID | NC | NO | DIGIT
		;
simplestatement:	assignment | outstatement
		;
assignment:	ID ATRIB expression
		;
expression:	NEG PAR_OPEN term PAR_CLOSED
		| NEG PAR_OPEN term EQ term PAR_CLOSED
		| term
		| term EQ term
		| NEG PAR_OPEN term LE term PAR_CLOSED
		| term LE term
		| NEG PAR_OPEN term GE term PAR_CLOSED
		| term GE term
		| NEG PAR_OPEN term AND term PAR_CLOSED
		| term AND term
		| NEG PAR_OPEN term OR term PAR_CLOSED
		| term OR term
		| NEG PAR_OPEN term DIF term PAR_CLOSED
		| term DIF term
		| NEG PAR_OPEN term L term PAR_CLOSED
		| term L term
		| NEG PAR_OPEN term G term PAR_CLOSED
		| term G term
		;
outstatement:	PRINT PAR_OPEN ID PAR_CLOSED
		;
structstatement:	ifstatement | whilestatement
		;
ifstatement:	IF PAR_OPEN expression PAR_CLOSED CURLY_OPEN statementlist CURLY_CLOSED
		;
whilestatement:	WHILE PAR_OPEN expression PAR_CLOSED CURLY_OPEN statementlist CURLY_CLOSED
		| WHILE PAR_OPEN expression PAR_CLOSED CURLY_OPEN statementlist BREAK ';' CURLY_CLOSED
		;
%%

void yyerror(char *s)
{
  printf("%s\n", s);
}

extern FILE *yyin;

void main(int argc, char **argv)
{
  if(argc>1) yyin = fopen(argv[1], "r");
  if((argc>2)&&(!strcmp(argv[2],"-d"))) yydebug = 1;
  if(!yyparse()) fprintf(stderr,"\tO.K.\n");
}
