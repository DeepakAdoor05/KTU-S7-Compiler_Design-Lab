%{
#include<stdio.h>
%}

%%
[0-9]  {printf("%s is a digit",yytext);}
[a-z]  {printf("%s is an alpbhabet",yytext);}
%%

int main()
{
    printf("Enter any digit or alpbhabet");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}