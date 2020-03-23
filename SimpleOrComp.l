%{
#include<stdio.h>
int flag=0;
%}
%%
[a-zA-Z0-9" "]+"and"|"AND"|"or"|"OR"|"but"|"BUT"[a-zA-Z0-9]* {flag=1;}
. ;
%%
int yywrap();
int main()
{
printf("Enter the string:\n");
yylex();
if(flag==1)
{
	printf("The string is compound\n");
}
else
{
	printf("the string is simple\n");
}

return 0;
}
