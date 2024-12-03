/* Lex program to identify letters and digits */
%{
#include<stdio.h>
%}

%%
[0-9]  {printf("%s is a digit\n",yytext);}
[a-z]  {printf("%s is an alpbhabet\n",yytext);}
%%

int main()
{
    printf("Enter any digit or alpbhabet:\n");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}

/*
        OUTPUT
Enter any digit or alpbhabet:
programmer01
p is an alpbhabet
r is an alpbhabet
o is an alpbhabet
g is an alpbhabet
r is an alpbhabet
a is an alpbhabet
m is an alpbhabet
m is an alpbhabet
e is an alpbhabet
r is an alpbhabet
0 is a digit
1 is a digit
*/