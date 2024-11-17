/* Program for implementing a calculator for computing the given expression using YACC and LEX  */
/*LEX code*/

%{
#include "y.tab.h"
extern int yylval;
%}

%%
[0-9]+  {
    yylval = atoi(yytext);
    return NUMBER;
}
[\t]    ;    
.   return yytext[0];
\n  return 0;
%%

int yywrap()
{
    return 1;
}

/*
        OUTPUT
Enter any Arithmetic Expression:
4+(1*2)

Result: 6
It's a valid arithmetic expression
*/