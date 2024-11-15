/* lex program to recognize and display keywords, numbers, and words in a given statement */

%{
#include <stdio.h>
%}

%%
if |
else |
for |
while |
int |       
printf   { printf("\n%s is a Keyword",yytext); }
[0-9]+       { printf("\n%s is a Number", yytext); }
[a-zA-Z]+    { printf("\n%s is a word", yytext); }
.|\n         { ECHO; }  // "." represent do nothing if anything else has inputted excluding \n
%%

int main()
{
    printf("\nEnter a string: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
