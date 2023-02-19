%{
#include<stdio.h>
#include "y.tab.h"
int yylex();
int yyerror(char *);
FILE *yyin;
%}
%token TIPO
%token ID
%token INI_SQ
%token FIM_SQ
%token NUM_INT
%token NUM_FLOAT
%token IF
%token ABRE_P
%token FECHA_P
%token ELSE
%token SWITCH
%token CASE
%token BREAK
%token DEFAULT
%token WHILE
%token FOR
%token ABRE_COL
%token FECHA_COL
%token OPER_RELACIONAL
%token OPER_ATRIBUICAO
%token OPER_MATEMATICO
%token INCRE_OU_DECRE
%token PP
%token PV
%token V
%%
booting:
        |TIPO declara PV {printf("  DECLARACAO DE VARIAVEL ACEITO.  ETAPA 1 \n");} booting
        |IF ABRE_P condicao FECHA_P ABRE_COL entao FECHA_COL else_opcional {printf("\n**** COMANDO IF ACEITO.  ETAPA 2 ****\n");} booting
        |SWITCH ABRE_P ID FECHA_P ABRE_COL caseI default FECHA_COL {printf("\n**** COMANDO SWITCH-CASE ACEITO.  ETAPA 2 ****\n");} booting
        |WHILE ABRE_P condicao FECHA_P ABRE_COL entao FECHA_COL {printf("\n**** COMANDO WHILE ACEITO.  ETAPA 3 ****\n");} booting
        |FOR ABRE_P ini_variavel PV condicao PV ID INCRE_OU_DECRE FECHA_P ABRE_COL entao FECHA_COL {printf("\n**** COMANDO FOR ACEITO.  ETAPA 3 ****\n");} booting
        ;
declara:
        ID
        |declara V ID
        |ID INI_SQ NUM_INT FIM_SQ
        |declara ID INI_SQ NUM_INT FIM_SQ
        ;
condicao:
        ID OPER_RELACIONAL ID
        |ID OPER_RELACIONAL NUM_INT
        |ID OPER_RELACIONAL NUM_FLOAT
        ;
entao:
        ID OPER_ATRIBUICAO de PV 
        |ID OPER_ATRIBUICAO de PV entao
        ;
de:
        tipo OPER_MATEMATICO tipo
        |tipo OPER_MATEMATICO tipo OPER_MATEMATICO de
        |tipo
        ;
tipo:
        ID
        |NUM_FLOAT
        |NUM_INT
        ;
else_opcional:
        |ELSE ABRE_COL entao FECHA_COL
        ;        
caseI:
        CASE NUM_INT PP ABRE_COL entao BREAK PV FECHA_COL caseII
        |CASE NUM_INT PP caseII
        ;
caseII:
        |CASE NUM_INT PP ABRE_COL entao BREAK PV FECHA_COL caseIII
        |CASE NUM_INT PP caseIII
        ;
caseIII:
        |CASE NUM_INT PP ABRE_COL entao BREAK PV FECHA_COL
        ;
default:
        |DEFAULT PP ABRE_COL entao FECHA_COL
        ;
ini_variavel:
        ID OPER_ATRIBUICAO ID
        |ID OPER_ATRIBUICAO NUM_INT
        ;
%%
int yywrap()
{
    return 1;
}

int main(int argc,char **argv)
{       
        printf("\n\n\t  Bem Vindo!\nTrabalho Final da disciplina de Copiladores\n\tUlbra Gravatai-RS\n\t    2022/2\n\nAluno: Vinicius Bandeira");
        printf("\n\n\t Este Copilador reconhece:\n Etapa 1 - Declaracao de variaveis no estilo da Linguagem C");
        printf("\n Etapa 2 - Comandos de selecao IF e Switch-Case no estilo da Linguagem C");
        printf("\n Etapa 3 - Comandos de repeticao While e FOR no estilo da Linguagem C\n\n");
        yyin=fopen(argv[1],"r");
        yyparse();
        fclose(yyin);        
}

int yyerror(char *s)
{
        fprintf(stderr," \n\n NAO FOI ACEITO!!\nCopilador encerrado...\n  ");
        return -1;

}