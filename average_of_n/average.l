%{
#include<stdio.h>
#include<math.h>    
float sum=0,avg=0;
int i=0,n;
%}

%%
[0-9]+  {
    printf("The no is %s\n",yytext);
    n=atoi(yytext);
    while(i<=n)
    {
        sum=sum+i;
        i++;
    }
    printf("Sum is %f\n",sum);
    printf("Avg is %f\n",sum/n);
    }
.|\n    {}
%%

int main()
{
    printf("Enter the no: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}