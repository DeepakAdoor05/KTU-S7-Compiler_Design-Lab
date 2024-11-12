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
    yylex();
    printf("The longest string is %s\n",longest_string);
    printf("The length of the string is %d\n",longest);
    return 0;
}
int yywrap()
{
    return 1;
}