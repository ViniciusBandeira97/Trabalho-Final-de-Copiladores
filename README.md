# Trabalho-Final-de-Copiladores
Trabalho acadêmico da disciplina de Copiladores.

Nesse projeto foi utilizado a ferramenta Flex para Windows e a objetivo foi desenvolver um Copilador que entenda a linguagem C. Para saber mais detalhes da atividade, veja o arquivo pdf "Trabalho Final - Compiladores (1)".

Disponível arquivo da gramática BNF do projeto.

Arquivo "lexico.l" contém as palavras terminais e não terminais do projeto.

Arquivo "sintatico.y" contém as regras da gramática BNF.

Comandos usado para gerar os arquivos "lex.yy" ,  y.tab e .exe
Flex lexico.l
bison -dy sintatico.y
gcc lex.yy.c y.tab.c -o trabalho.exe
.\trabalho.exe
