package codigo;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%
ORG {return new Symbol(sym.ORG, yychar, yyline, yytext());}
EQU {return new Symbol(sym.EQU, yychar, yyline, yytext());}
FCB {return new Symbol(sym.FCB, yychar, yyline, yytext());}
END {return new Symbol(sym.END, yychar, yyline, yytext());}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"*".* {/*Ignore*/}
"#" {return new Symbol(sym.Gato, yychar, yyline, yytext());}
"'" {return new Symbol(sym.Apostrofe, yychar, yyline, yytext());}
"$" {return new Symbol(sym.SignoPeso, yychar, yyline, yytext());}
"ORG" {return new Symbol(sym.ORG, yychar, yyline, yytext());}
{L}({L}|{D})* {return new Symbol(sym.Mnemonico, yychar, yyline, yytext());}
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
