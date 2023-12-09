%{
#include <stdio.h>
#include <stdlib.h>
%}

%token INT FLOAT IF ELSE ID NUM WHILE RELOP

%%

program: declaration_list main_function
        ;

declaration_list: /* empty */
                | declaration_list declaration
                ;

declaration: type variable_list ';'
           | function_declaration
           ;

type: INT
    | FLOAT
    ;

variable_list: ID
             | variable_list ',' ID
             ;

main_function: INT ID '(' ')' compound_statement
             ;

function_declaration: type ID '(' parameter_list ')' compound_statement
                   ;

parameter_list: /* empty */
              | parameter_list type ID
              ;

compound_statement: '{' statement_list '}'
                 ;

statement_list: /* empty */
              | statement_list statement
              ;

statement: expression_statement
         | conditional_statement
         | while_statement
         | compound_statement
         ;

expression_statement: ';'
                  | expression ';'
                  ;

expression: ID '=' expression
          | ID RELOP ID
          | ID
          ;

conditional_statement: IF '(' expression ')' statement ELSE statement
                    ;

while_statement: WHILE '(' expression ')' statement
               ;

%%

int main() {
    yyparse(); // Appel de l'analyse syntaxique
    return 0;
}

int yyerror(const char *msg) {
    fprintf(stderr, "Erreur de syntaxe: %s\n", msg);
    return 1;
}
