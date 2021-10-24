package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r]+
%{
    public String lexeme;
%}
%%
ORG {lexeme=yytext(); return ORG;}
EQU {lexeme=yytext(); return EQU;}
FCB {lexeme=yytext(); return FCB;}
END {lexeme=yytext(); return END;}
{espacio} {/*Ignore*/}
("//".*) {/*Ignore*/}
("\n") {return Linea;}
("*".*) {/*Ignore*/}
("#") {lexeme=yytext(); return Gato;}
("'") {lexeme=yytext(); return Apostrofe;}
("$") {lexeme=yytext(); return SignoPeso;}
("ORG") {lexeme=yytext(); return ORG;}
{L}({L}|{D})* {lexeme=yytext(); return Mnemonico;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}
