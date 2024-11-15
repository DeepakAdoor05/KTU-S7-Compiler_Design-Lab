/* Yacc program to check valid variable followed by letter or digits  */

%{
#include "y.tab.h"    /* Include the generated header for token declarations */
%}

%%

[a-zA-Z_][a-zA-Z_0-9$]*  { return letter; }  /* Identifier starting with a letter or underscore */
[0-9]                   { return digit; }   /* Sequence of digits */
\n                       { return 0; }       /* End of input on newline */
.                        { return yytext[0]; } /* Return other characters as they are */

%%

int yywrap()
{
    return 1;
}
