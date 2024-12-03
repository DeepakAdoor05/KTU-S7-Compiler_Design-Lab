/*lex program to find the longest name */

%{
#include<stdio.h>
#include<string.h>
char longest_string[30];
int longest;
%}

%%
[a-z A-Z]+  {if(yyleng>longest)
    {
        longest = yyleng;
        strcpy(longest_string,yytext);
    }
}
%%
int main()
{
    printf("Enter the names:\n");
    yylex();
    printf("The longest name is %s\n",longest_string);
    printf("The length of the name is %d\n",longest);
    return 0;
}
int yywrap()
{
    return 1;
}

/*
    OUTPUT
Enter the names:
Hari

Cicil

Deepak

Prince

^Z
The longest name is Deepak
The length of the name is 6
*/