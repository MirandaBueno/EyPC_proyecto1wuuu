package codigo;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%column
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
/*INH ABA */
( "aba" | "ABA" ) {return new Symbol(sym.INH_ABA, yychar, yyline, yytext());}
/*INH ABX */
( "abx" | "ABX" ) {return new Symbol(sym.INH_ABX, yychar, yyline, yytext());}
/*INH ABY */
( "aby" | "ABY" ) {return new Symbol(sym.INH_ABY, yychar, yyline, yytext());}
/*INH ASLA */
( "asla" | "ASLA" ) {return new Symbol(sym.INH_ASLA, yychar, yyline, yytext());}
/*INH ASLB */
( "aslb" | "ASLB" ) {return new Symbol(sym.INH_ASLB, yychar, yyline, yytext());}
/*INH ASLD */
( "asld" | "ASLD" ) {return new Symbol(sym.INH_ASLD, yychar, yyline, yytext());}
/*INH ASRA */
( "asra" | "ASRA" ) {return new Symbol(sym.INH_ASRA, yychar, yyline, yytext());}
/*INH ASRB */
( "asrb" | "ASRB" ) {return new Symbol(sym.INH_ASRB, yychar, yyline, yytext());}
/*INH CBA */
( "cba" | "CBA" ) {return new Symbol(sym.INH_CBA, yychar, yyline, yytext());}
/*INH CLC */
( "clc" | "CLC" ) {return new Symbol(sym.INH_CLC, yychar, yyline, yytext());}
/*INH CLI */
( "cli" | "CLI" ) {return new Symbol(sym.INH_CLI, yychar, yyline, yytext());}
/*INH CLRA */
( "clra" | "CLRA" ) {return new Symbol(sym.INH_CLRA, yychar, yyline, yytext());}
/*INH CLRB */
( "clrb" | "CLRB" ) {return new Symbol(sym.INH_CLRB, yychar, yyline, yytext());}
/*INH CLV */
( "clv" | "CLV" ) {return new Symbol(sym.INH_CLV, yychar, yyline, yytext());}
/*INH COMA */
( "coma" | "COMA" ) {return new Symbol(sym.INH_COMA, yychar, yyline, yytext());}
/*INH COMB */
( "comb" | "COMB" ) {return new Symbol(sym.INH_COMB, yychar, yyline, yytext());}
/*INH DAA */
( "daa" | "DAA" ) {return new Symbol(sym.INH_DAA, yychar, yyline, yytext());}
/*INH DECA */
( "deca" | "DECA" ) {return new Symbol(sym.INH_DECA, yychar, yyline, yytext());}
/*INH DECB */
( "decb" | "DECB" ) {return new Symbol(sym.INH_DECB, yychar, yyline, yytext());}
/*INH DES */
( "des" | "DES" ) {return new Symbol(sym.INH_DES, yychar, yyline, yytext());}
/*INH DEX */
( "dex" | "DEX" ) {return new Symbol(sym.INH_DEX, yychar, yyline, yytext());}
/*INH DEY */
( "dey" | "DEY" ) {return new Symbol(sym.INH_DEY, yychar, yyline, yytext());}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"*".* {/*Ignore*/}
"#" {return new Symbol(sym.Gato, yychar, yyline, yytext());}
"'" {return new Symbol(sym.Apostrofe, yychar, yyline, yytext());}
"$" {return new Symbol(sym.SignoPeso, yychar, yyline, yytext());}
{L}({L}|{D})* {return new Symbol(sym.Otro, yychar, yyline, yytext());}
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
