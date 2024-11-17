/* Program for implementing a calculator for computing the given expression using YACC and LEX  */
/*YACC code*/

%{
#include<stdio.h>
int flag=0;

int yylex();
void yyerror();

%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
ArithmeticExpression: E{
    printf("\nResult: %d\n",$$);
    return 0;
};
E:E '+' E   {$$=$1+$3;}
 |E '-' E   {$$=$1-$3;}
 |E '*' E   {$$=$1*$3;}
 |E '/' E   {$$=$1/$3;}
 |E '%' E   {$$=$1%$3;}
 |'(' E ')' {$$=$2;}
 |NUMBER    {$$=$1;}
 ;
%%

void main()
{
    printf("Enter any Arithmetic Expression:\n");
    yyparse();
    if(flag == 0)
    {
        printf("It's a valid arithmetic expression\n");
    }

}

void yyerror()
{
    printf("It's an invalid arithmetic expression\n");
    flag=1;
}

/*
        OUTPUT
Enter any Arithmetic Expression:
4+(1*2)

Result: 6
It's a valid arithmetic expression
*/