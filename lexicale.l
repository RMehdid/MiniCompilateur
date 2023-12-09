%{
#include <stdio.h>
%}

%token INT FLOAT IF ELSE ID NUM

DIGIT       [0-9]
ID_START    [a-zA-Z_]
ID_BODY     [a-zA-Z0-9_]

%%

"int"       { return INT; }
"float"     { return FLOAT; }
"if"        { return IF; }
"else"      { return ELSE; }
"while"     { return WHILE; }

{ID_START}{ID_BODY}*   { return ID; }

{DIGIT}+    { return NUM; }

"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"="         { return '='; }
"["         { return '['; }
"]"         { return ']'; }
"."         { return '.'; }
","         { return ','; }
"("         { return '('; }
")"         { return ')'; }
"{"         { return '{'; }
"}"         { return '}'; }
";"         { return ';'; }
"=="        { return RELOP; }
"!="        { return RELOP; }
"<"         { return RELOP; }
">"         { return RELOP; }
"<="        { return RELOP; }
">="        { return RELOP; }

[ \t\n]+    ;

.           { fprintf(stderr, "Caractère inattendu: %c\n", yytext[0]); }

%%

int main() {
    yylex();
    return 0;
}
