%{
#include<stdio.h>
#include<string.h>
%}

%%
[a-zA-Z]+   {
    int length = strlen(yytext);
    int is_palindrome=1;
    for(int i=0; i<=(length/2); i++)
    {
        if(yytext[i] != yytext[length-i-1])
        {
            is_palindrome = 0;
            break;
        }
    }
    if(is_palindrome)
        printf("%s is a palindrome\n",yytext);
    else
        printf("%s is not a palindrome\n",yytext);
    printf("The length of the string is %d\n",length);
}
%%
int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}