%{
#include<stdio.h>
#include<math.h>
int i,n,flag;    
%}

%%
[0-9]+  {
    printf("The no is %s\n",yytext);
    n= atoi(yytext);
    flag=0;
    for(i=2; i<=sqrt(n); i++)
    {
        if(n%i==0)
        {
            flag=1;
            break;
        }
    }
    if(flag==1 || n<=1)
        printf("%s is not a prime no\n",yytext);
    else
        printf("%s is a prime no\n",yytext);
}
%%
int main()
{
    printf("Enter the no: ");
    yylex();
}
int yywrap()
{
    return 1;
}