%{
#include "y.tab.h"
extern int yyparse();
extern int yyerror();
%}

%%
"char"|"int"|"float"         {printf("[TIPO] ");return TIPO;}
"if"			             {printf("[IF] ");return IF;}
"else" 			             {printf("[ELSE] ");return ELSE;}
"switch"                     {printf("[SWITCH] ");return SWITCH;}
"break"                      {printf("[BREAK] ");return BREAK;}
"default"                    {printf("[DEFAULT] ");return DEFAULT;}
"while"                      {printf("[WHILE] ");return WHILE;}
"for"                        {printf("[FOR] ");return FOR;}
"case"                       {printf("[CASE] ");return CASE;}
[a-zA-Z_]+[a-zA-Z0-9_]*      {printf("[ID] ");return ID;}
[0-9]{1,3}                   {printf("[NUM_INT] ");return NUM_INT;}
[0-9]{1,6}[.][0-9]{0,6}      {printf("[NUM_FLOAT]  ");return NUM_FLOAT;}
"["                          {printf("[INI_SQ] ");return INI_SQ;}
"]"                          {printf("[FIM_SQ] ");return FIM_SQ;}
"("			                 {printf("[ABRE_P]  ");return ABRE_P;}
")"			                 {printf("[FECHA_P]  ");return FECHA_P;}
"{"			                 {printf("\n[ABRE_COL] ");return ABRE_COL;}
"}"			                 {printf("[FECHA_COL]\n");return FECHA_COL;}
"++"                         {printf("[INCRE_OU_DECRE] ");return INCRE_OU_DECRE;}
"--"                         {printf("[INCRE_OU_DECRE] ");return INCRE_OU_DECRE;}
"<"			                 {printf("[OPER_RELACIONAL] ");return OPER_RELACIONAL;}
">"			                 {printf("[OPER_RELACIONAL] ");return OPER_RELACIONAL;}
"=="			             {printf("[OPER_RELACIONAL] ");return OPER_RELACIONAL;}
"<="			             {printf("[OPER_RELACIONAL] ");return OPER_RELACIONAL;}
">="			             {printf("[OPER_RELACIONAL] ");return OPER_RELACIONAL;}
"!="			             {printf("[OPER_RELACIONAL] ");return OPER_RELACIONAL;}
[=]			                 {printf("[OPER_ATRIBUICAO] ");return OPER_ATRIBUICAO;}
(\+=)                        {printf("[OPER_ATRIBUICAO] ");return OPER_ATRIBUICAO;}
(\-=)                        {printf("[OPER_ATRIBUICAO] ");return OPER_ATRIBUICAO;}
(\*=)                        {printf("[OPER_ATRIBUICAO] ");return OPER_ATRIBUICAO;}
(\/=)                        {printf("[OPER_ATRIBUICAO] ");return OPER_ATRIBUICAO;}
\+			                 {printf("[OPER_MATEMATICO] ");return OPER_MATEMATICO;}
\-			                 {printf("[OPER_MATEMATICO] ");return OPER_MATEMATICO;}
\*			                 {printf("[OPER_MATEMATICO] ");return OPER_MATEMATICO;}
[/]			                 {printf("[OPER_MATEMATICO] ");return OPER_MATEMATICO;}
":"                          {printf("[PP] ");return PP;}
","                          {printf("[V] ");return V;}
";"                          {printf("[PV] ");return PV;}
%%