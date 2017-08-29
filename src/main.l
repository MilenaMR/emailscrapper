
%{
#include <stdio.h>
%}


%%

[A-Za-z0-9]+[A-Za-z0-9_\.-]*[A-Za-z0-9]+[@][A-Za-z0-9_\.-]*[A-Za-z0-9]+[_-] ;

[A-Za-z0-9]+[A-Za-z0-9_\.-]*[A-Za-z0-9]+[@][A-Za-z0-9_\.-]*[A-Za-z0-9]+ {printf("%s\n",yytext);}


. ;
[[:space:]] ;

%%

int main() {
  yylex();
  return 0;
}
