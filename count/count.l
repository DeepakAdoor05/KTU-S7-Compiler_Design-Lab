/* Lex program to count the no of lines, spaces, characters,and words from a given statement */

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
    printf("Enter the statement:\n");
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

/*
        OUTPUT
Enter the statement:
Hi
Hello
Good day
^Z("ctrl+z then Enter" -> for Windows and "ctrl+d" -> for Ubuntu)
No. of new lines = 3
No. of spaces = 1
No. of characters = 18
No. of words = 4
*/