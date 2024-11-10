%{
#include<stdio.h>
int v=0, c=0;
%}

%%
[ \t\n]+       ;
[aeiouAEIOU]   {v++;}
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]  {c++;}
%%

int main()
{
    printf("Enter a string:\n");
    yylex();
    printf("No. of vowels = %d\n",v);
    printf("No of consonants = %d\n",c);
}
int yywrap()
{
    return 1;
}