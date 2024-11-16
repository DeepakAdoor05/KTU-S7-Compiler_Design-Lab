/*Lex program to convert the substring abc to ABC from the given input string.*/

%{
#include<stdio.h>
int i;
%}

%%
[a-z A-Z]*  {
    for(i=0; i<=yyleng; i++)
    {
        if(yytext[i]=='a' && yytext[i+1]=='b' && yytext[i+2]=='c')
        {
            yytext[i] = 'A';
            yytext[i+1] = 'B';
            yytext[i+2] = 'C';
        }
    }
    printf("Result : %s",yytext);
}
%%

int main()
{
    printf("Enter a string: ");
    yylex();
}
int yywrap()
{
    return 1;
}

/*
        OUTPUT
Enter a string: school of abc
Result : school of ABC
*/