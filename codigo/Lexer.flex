package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
%caseless
L=[a-zA-Z_]
D=[0-9]
H=[0-9]|[A-F]
espacio=[ ,\t,\r]+
%{
    public String lexeme;
%}
%%
"ORG" {return Org;}
"FCB"  {return Fcb;}
"END"  {return End;}
"EQU"  {return Equ;}
"\n"+  {return Linea;}
{espacio} {return Espacio;}
"*".* {lexeme=yytext(); return Comentario;}
{L}({L}|{D})* {lexeme=yytext(); return Etiq_Var_Instrucc;}
"$"{H}{4} {lexeme=yytext(); return Org_Equ;}
"#$"(([0-9]|[A-F]){2,4}) {lexeme=yytext(); return NumeroHexaIMM;}
"#"([0-9]{2,4}) {lexeme=yytext(); return NumeroDecIMM;}
"#'"{L} {lexeme=yytext(); return CharIMM;}
"$"(([0-9]|[A-F]){2}) {lexeme=yytext(); return NumeroHexaDIR;}
[0-9]{1,5} {lexeme=yytext(); return NumeroDecDIR_EXT;}
"$"(([0-9]|[A-F]){3,4}) {lexeme=yytext(); return NumeroHexaEXT;}
"$"(([0-9]|[A-F]){2})",X" {lexeme=yytext(); return NumeroHexaINDX;}
"$"(([0-9]|[A-F]){2})",Y" {lexeme=yytext(); return NumeroHexaINDY;}

. {return ERROR;}