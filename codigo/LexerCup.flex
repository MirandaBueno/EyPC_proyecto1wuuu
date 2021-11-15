package codigo;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
%caseless
L=[a-zA-Z_]
D=[0-9]
H=[0-9]|[A-F]
espacio=[ ,\t,\r]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type,yyline,yycolumn,value);
    }
    private Symbol symbol(int type){
        return new Symbol(type,yyline,yycolumn);
    }
%}
%%
"ORG" {return new Symbol(sym.Org, yychar, yyline,yytext());}
"FCB"  {return new Symbol(sym.Fcb, yychar, yyline,yytext());}
"END"  {return new Symbol(sym.End, yychar, yyline,yytext());}
"EQU"  {return new Symbol(sym.Equ, yychar, yyline,yytext());}
{espacio} {return new Symbol(sym.Espacio, yychar, yyline,yytext());}
"*".* {return new Symbol(sym.Comentario, yychar, yyline,yytext());}
"\n"+ {return new Symbol(sym.Linea, yychar, yyline,yytext());}
{L}({L}|{D})* {return new Symbol(sym.Etiq_Var_Instrucc, yychar, yyline,yytext());}
"$"{H}{4} {return new Symbol(sym.Org_Equ, yychar, yyline,yytext());}
"#$"(([0-9]|[A-F]){2,4}) {return new Symbol(sym.NumeroHexaIMM, yychar, yyline,yytext());}
"#"([0-9]{2,4}) {return new Symbol(sym.NumeroDecIMM, yychar, yyline,yytext());}
"#'"{L} {return new Symbol(sym.CharIMM, yychar, yyline,yytext());}
"$"(([0-9]|[A-F]){2}) {return new Symbol(sym.NumeroHexaDIR, yychar, yyline,yytext());}
[0-9]{1,5} {return new Symbol(sym.NumeroDecDIR_EXT, yychar, yyline,yytext());}
"$"(([0-9]|[A-F]){3,4}) {return new Symbol(sym.NumeroHexaEXT, yychar, yyline,yytext());}
"$"(([0-9]|[A-F]){2})",X" {return new Symbol(sym.NumeroHexaINDX, yychar, yyline,yytext());}
"$"(([0-9]|[A-F]){2})",Y" {return new Symbol(sym.NumeroHexaINDY, yychar, yyline,yytext());}

. {return new Symbol(sym.ERROR, yychar, yyline,yytext());}