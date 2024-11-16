/*Lex program to count the no: of vowels and consonants in a given string.*/
%{
#include<stdio.h>
int v=0, c=0;
%}

%%
[ \t\n]+       ;
[aeiouAEIOU]   {v++;}
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]  {c++;}
%%

int main(int argc,char* argv[])
{
    if(argc == 2)
        yyin = fopen(argv[1],"r");
    else
        printf("Enter a string:\n");
    yylex();
    printf("No. of vowels = %d\n",v);
    printf("No. of consonants = %d\n",c);
}
int yywrap()
{
    return 1;
}

/*
        OUTPUT
Enter a string:
Hello
^Z("ctrl+z then Enter" -> for Windows and "ctrl+d" -> for Ubuntu)
No. of vowels = 2
No. of consonants = 3
*/