/* Lex program to count the no of lines, spaces, characters,and words from a given file */
%{
#include<stdio.h>
int lc=0, sc=0, wc=0, cc=0;
%}

%%
[\n]    {lc++; cc+=yyleng;}
[ \t]   {sc++; cc+=yyleng;}
[^\t\n ]+  {wc++; cc+=yyleng;}  // " ^ " represnt not
%%

int main()
{
    yyin = fopen("inp.txt","r");
    yylex();
    printf("No. of new lines = %d\n",lc);
    printf("No. of spaces = %d\n",sc);
    printf("No. of characters = %d\n",cc);
    printf("No. of words = %d\n",wc);
}
int yywrap()
{
    return 1;
}