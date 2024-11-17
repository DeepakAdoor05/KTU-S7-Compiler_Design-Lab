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
    printf("\nEnter the string: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}

/*
    OUTPUT

Enter a string: if 30 greater than 20

if is a Keyword
30 is a Number
greater is a word
than is a word
20 is a Number
*/