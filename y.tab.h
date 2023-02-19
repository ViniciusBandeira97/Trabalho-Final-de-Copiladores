
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     TIPO = 258,
     ID = 259,
     INI_SQ = 260,
     FIM_SQ = 261,
     NUM_INT = 262,
     NUM_FLOAT = 263,
     IF = 264,
     ABRE_P = 265,
     FECHA_P = 266,
     ELSE = 267,
     SWITCH = 268,
     CASE = 269,
     BREAK = 270,
     DEFAULT = 271,
     WHILE = 272,
     FOR = 273,
     ABRE_COL = 274,
     FECHA_COL = 275,
     OPER_RELACIONAL = 276,
     OPER_ATRIBUICAO = 277,
     OPER_MATEMATICO = 278,
     INCRE_OU_DECRE = 279,
     PP = 280,
     PV = 281,
     V = 282
   };
#endif
/* Tokens.  */
#define TIPO 258
#define ID 259
#define INI_SQ 260
#define FIM_SQ 261
#define NUM_INT 262
#define NUM_FLOAT 263
#define IF 264
#define ABRE_P 265
#define FECHA_P 266
#define ELSE 267
#define SWITCH 268
#define CASE 269
#define BREAK 270
#define DEFAULT 271
#define WHILE 272
#define FOR 273
#define ABRE_COL 274
#define FECHA_COL 275
#define OPER_RELACIONAL 276
#define OPER_ATRIBUICAO 277
#define OPER_MATEMATICO 278
#define INCRE_OU_DECRE 279
#define PP 280
#define PV 281
#define V 282




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


