%{
#include<stdio.h>
int ml=0,sl=0;
%}

%%
"/*"[a-zA-Z0-9 \t\n]*"*/"   {ml++; }
"//"[a-zA-Z0-9 \t]*"\n"     {sl++; }
%%

int main()
{
    yyin = fopen("input.c","r");
    yyout = fopen("output.c","w");
    yylex();
    fclose(yyin);
    printf("No. of single line comments are %d\n",sl);
    printf("No. of multi line comments are %d\n",ml);
}
int yywrap()
{
    return 1;
}