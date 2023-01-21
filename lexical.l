/*** Definition Section ***/
%{
#include "y.tab.h"
%}

%option noyywrap
%option caseless

LETTER		[A-Za-z]
UNDERSCORE	[_]
DIGIT		[0-9]
IDENTIFIER	{UNDERSCORE}|{LETTER}({LETTER}|{DIGIT}|{UNDERSCORE})*
NO		{DIGIT}+
NOCONST		{NO}|"+"{NO}|"-"{NO}
CHARCONST	"'"{LETTER}|{DIGIT}"'"
STRINGCONST	{CHARCONST}+
FLOATCONST	{NO}"."{NO}+
SEPARATOR	"\n"|"["|"]"
OPERATOR	[+*/<>!]
DELIMIT		";"
/*** Rule Section ***/
%%

[ \t\n]

void                                    { return VOID; }
while                                   { return WHILE; }
static                                  { return STATIC; }
short                                   { return SHORT; }
read                                    { return READ; }
return                                  { return RETURN; }
int                                   	{ return INT; }
main					{ return MAIN; }
string					{ return STRING; }
print					{ return PRINT; }
break                                   { return BREAK; }
char                                  	{ return CHAR; }
continue                                { return CONTINUE; }
do                                	{ return DO; }
double                                  { return DOUBLE; }
else                                   	{ return ELSE; }
float                                   { return FLOAT; }
if                                    	{ return IF; }
long                                    { return LONG; }
"!"					{ return NEG; }
{DIGIT}					{ return DIGIT; }
"{"					{ return CURLY_OPEN; }
"}"					{ return CURLY_CLOSED; }
"("					{ return PAR_OPEN; }
")"					{ return PAR_CLOSED; }
"="					{ return ATRIB; }
"=="					{ return EQ; }
"<="					{ return LE; }
">="					{ return GE; }
"&&"					{ return AND; }
"||"					{ return OR; }
"!="					{ return DIF; }
"<"					{ return L; }
">"					{ return G; }
{NO}					{ return NO; }
{NOCONST}				{ return NC; }
{IDENTIFIER}				{ return ID; }
{CHARCONST}				{ return CH; }
{STRINGCONST}				{ return ST; }
{FLOATCONST}				{ return FL; }
{SEPARATOR}				{ return SEP; }
{OPERATOR}				{ return OP; }
{DELIMIT}				{ return yytext[0]; }
.					{ printf("LEX ERROR AT CHARACTER: %s\n",yytext); }
%%
