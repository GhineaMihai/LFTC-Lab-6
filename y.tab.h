/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    VOID = 258,                    /* VOID  */
    WHILE = 259,                   /* WHILE  */
    STATIC = 260,                  /* STATIC  */
    SHORT = 261,                   /* SHORT  */
    READ = 262,                    /* READ  */
    RETURN = 263,                  /* RETURN  */
    INT = 264,                     /* INT  */
    MAIN = 265,                    /* MAIN  */
    STRING = 266,                  /* STRING  */
    PRINT = 267,                   /* PRINT  */
    BREAK = 268,                   /* BREAK  */
    CHAR = 269,                    /* CHAR  */
    CONTINUE = 270,                /* CONTINUE  */
    DO = 271,                      /* DO  */
    DOUBLE = 272,                  /* DOUBLE  */
    ELSE = 273,                    /* ELSE  */
    FLOAT = 274,                   /* FLOAT  */
    IF = 275,                      /* IF  */
    LONG = 276,                    /* LONG  */
    DIGIT = 277,                   /* DIGIT  */
    NO = 278,                      /* NO  */
    NC = 279,                      /* NC  */
    CH = 280,                      /* CH  */
    ST = 281,                      /* ST  */
    ID = 282,                      /* ID  */
    FL = 283,                      /* FL  */
    SEP = 284,                     /* SEP  */
    OP = 285,                      /* OP  */
    CURLY_OPEN = 286,              /* CURLY_OPEN  */
    CURLY_CLOSED = 287,            /* CURLY_CLOSED  */
    PAR_OPEN = 288,                /* PAR_OPEN  */
    PAR_CLOSED = 289,              /* PAR_CLOSED  */
    ATRIB = 290,                   /* ATRIB  */
    NEG = 291,                     /* NEG  */
    EQ = 292,                      /* EQ  */
    LE = 293,                      /* LE  */
    GE = 294,                      /* GE  */
    AND = 295,                     /* AND  */
    OR = 296,                      /* OR  */
    DIF = 297,                     /* DIF  */
    L = 298,                       /* L  */
    G = 299                        /* G  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define VOID 258
#define WHILE 259
#define STATIC 260
#define SHORT 261
#define READ 262
#define RETURN 263
#define INT 264
#define MAIN 265
#define STRING 266
#define PRINT 267
#define BREAK 268
#define CHAR 269
#define CONTINUE 270
#define DO 271
#define DOUBLE 272
#define ELSE 273
#define FLOAT 274
#define IF 275
#define LONG 276
#define DIGIT 277
#define NO 278
#define NC 279
#define CH 280
#define ST 281
#define ID 282
#define FL 283
#define SEP 284
#define OP 285
#define CURLY_OPEN 286
#define CURLY_CLOSED 287
#define PAR_OPEN 288
#define PAR_CLOSED 289
#define ATRIB 290
#define NEG 291
#define EQ 292
#define LE 293
#define GE 294
#define AND 295
#define OR 296
#define DIF 297
#define L 298
#define G 299

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 23 "sintactic.y"

  	int l_val;
	char *p_val;

#line 160 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
