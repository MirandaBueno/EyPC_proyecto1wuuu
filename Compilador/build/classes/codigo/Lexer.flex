package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
%caseless
L=[a-zA-Z_]
D=[0-9]
H=[0-9]|[A-F]
espacio=[ ,\t]
salto=[\n]
%{
    public String lexeme;
%}
%%
"ORG" {lexeme=yytext(); return Org;}
"FCB"  {lexeme=yytext(); return Fcb;}
"END"  {lexeme=yytext(); return End;}
"EQU"  {lexeme=yytext(); return Equ;}
{salto}+  {lexeme=yytext(); return Linea;}
{espacio}+ {lexeme=yytext(); return Espacio;}
"*".* {lexeme=yytext(); return Comentario;}

{L}({L}|{D})* {lexeme=yytext(); return Etiq_Var_Instrucc;}

"$"({H}{4}) {lexeme=yytext(); return HexaExtOrgEqu;}

"#$"({H}{1,4}) {lexeme=yytext(); return NumeroHexaIMM;}
"#"({D}{1,5}) {lexeme=yytext(); return NumeroDecIMM;}
"#'".* {lexeme=yytext(); return CharIMM;}
"#"({L}({L}|{D})*) {lexeme=yytext(); return EtiqIMM;}

"$"({H}{2}) {lexeme=yytext(); return NumeroHexaDIR;}
{D}{1,2} {lexeme=yytext(); return NumeroDecDIR;}
"$"({H}{2})",#"({H}{2}) {lexeme=yytext(); return NumeroDIR;}

{D}{4,5} {lexeme=yytext(); return NumeroDecEXT;}
{D}{3} {lexeme=yytext(); return NumeroDecEXT_DIR;}
"$"({H}{3,4}) {lexeme=yytext(); return NumeroHexaEXT;}

"$"({H}{2})",X" {lexeme=yytext(); return NumeroHexaINDX;}
"$"({H}{2})",X,#$"({H}{2}) {lexeme=yytext(); return NumeroINDX;}
"$"({H}{2})",Y" {lexeme=yytext(); return NumeroHexaINDY;}
"$"({H}{2})",Y,#$"({H}{2}) {lexeme=yytext(); return NumeroINDY;}

"$"({H}{2})",$"({H}{2}) {lexeme=yytext(); return NumFCB;}

. {return ERROR;}