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
/*INH FDIV */
( "fdiv" | "FDIV" ) {return new Symbol(sym.INH_FDIV, yychar, yyline, yytext());}
/*INH IDIV */
( "idiv" | "IDIV" ) {return new Symbol(sym.INH_IDIV, yychar, yyline, yytext());}
/*INH INCA */
( "inca" | "INCA" ) {return new Symbol(sym.INH_INCA, yychar, yyline, yytext());}
/*INH INCB */
( "incb" | "INCB" ) {return new Symbol(sym.INH_INCB, yychar, yyline, yytext());}
/*INH INS */
( "ins" | "INS" ) {return new Symbol(sym.INH_INS, yychar, yyline, yytext());}
/*INH INX */
( "inx" | "INX" ) {return new Symbol(sym.INH_INX, yychar, yyline, yytext());}
/*INH INY */
( "iny" | "INY" ) {return new Symbol(sym.INH_INY, yychar, yyline, yytext());}
/*INH LSLA */
( "lsla" | "LSLA" ) {return new Symbol(sym.INH_LSLA, yychar, yyline, yytext());}
/*INH LSLB */
( "lslb" | "LSLB" ) {return new Symbol(sym.INH_LSLB, yychar, yyline, yytext());}
/*INH LSLD */
( "lsld" | "LSLD" ) {return new Symbol(sym.INH_LSLD, yychar, yyline, yytext());}
/*INH LSRA */
( "lsra" | "LSRA" ) {return new Symbol(sym.INH_LSRA, yychar, yyline, yytext());}
/*INH LSRB */
( "lsrb" | "LSRB" ) {return new Symbol(sym.INH_LSRB, yychar, yyline, yytext());}
/*INH LSRD */
( "lsrd" | "LSRD" ) {return new Symbol(sym.INH_LSRD, yychar, yyline, yytext());}
/*INH MUL */
( "mul" | "MUL" ) {return new Symbol(sym.INH_MUL, yychar, yyline, yytext());}
/*INH NEGA */
( "nega" | "NEGA" ) {return new Symbol(sym.INH_NEGA, yychar, yyline, yytext());}
/*INH NEGB */
( "negb" | "NEGB" ) {return new Symbol(sym.INH_NEGB, yychar, yyline, yytext());}
/*INH NOP */
( "nop" | "NOP" ) {return new Symbol(sym.INH_NOP, yychar, yyline, yytext());}
/*INH PSHA */
( "psha" | "PSHA" ) {return new Symbol(sym.INH_PSHA, yychar, yyline, yytext());}
/*INH PSHB */
( "pshb" | "PSHB" ) {return new Symbol(sym.INH_PSHB, yychar, yyline, yytext());}
/*INH PSHX */
( "PSHX" | "PSHX" ) {return new Symbol(sym.INH_PSHX, yychar, yyline, yytext());}
/*INH PSHY */
( "pshy" | "PSHY" ) {return new Symbol(sym.INH_PSHY, yychar, yyline, yytext());}
/*INH PULA */
( "pula" | "PULA" ) {return new Symbol(sym.INH_PULA, yychar, yyline, yytext());}
/*INH PULB */
( "pulb" | "PULB" ) {return new Symbol(sym.INH_PULB, yychar, yyline, yytext());}
/*INH PULX */
( "pulx" | "PULX" ) {return new Symbol(sym.INH_PULX, yychar, yyline, yytext());}
/*INH PULY */
( "puly" | "PULY" ) {return new Symbol(sym.INH_PULY, yychar, yyline, yytext());}
/*INH ROLA */
( "rola" | "ROLA" ) {return new Symbol(sym.INH_ROLA, yychar, yyline, yytext());}
/*INH ROLB */
( "rolb" | "ROLB" ) {return new Symbol(sym.INH_ROLB, yychar, yyline, yytext());}
/*INH RORA */
( "rora" | "RORA" ) {return new Symbol(sym.INH_RORA, yychar, yyline, yytext());}
/*INH RORB */
( "rorb" | "RORB" ) {return new Symbol(sym.INH_RORB, yychar, yyline, yytext());}
/*INH RTI */
( "rti" | "RTI" ) {return new Symbol(sym.INH_RTI, yychar, yyline, yytext());}
/*INH RTS */
( "rts" | "RTS" ) {return new Symbol(sym.INH_RTS, yychar, yyline, yytext());}
/*INH SBA */
( "sba" | "SBA" ) {return new Symbol(sym.INH_SBA, yychar, yyline, yytext());}
/*INH SEC */
( "sec" | "SEC" ) {return new Symbol(sym.INH_SEC, yychar, yyline, yytext());}
/*INH SEI */
( "sei" | "SEI" ) {return new Symbol(sym.INH_SEI, yychar, yyline, yytext());}
/*INH SEV */
( "sev" | "SEV" ) {return new Symbol(sym.INH_SEV, yychar, yyline, yytext());}
/*INH STOP */
( "sev" | "STOP" ) {return new Symbol(sym.INH_STOP, yychar, yyline, yytext());}
/*INH SWI */
( "swi" | "SWI" ) {return new Symbol(sym.INH_SWI, yychar, yyline, yytext());}
/*INH TAB */
( "tab" | "TAB" ) {return new Symbol(sym.INH_TAB, yychar, yyline, yytext());}
/*INH TAP */
( "tap" | "TAP" ) {return new Symbol(sym.INH_TAP, yychar, yyline, yytext());}
/*INH TBA */
( "tba" | "TBA" ) {return new Symbol(sym.INH_TBA, yychar, yyline, yytext());}
/*INH TETS */
( "tets" | "TETS" ) {return new Symbol(sym.INH_TETS, yychar, yyline, yytext());}
/*INH TPA */
( "tpa" | "TPA" ) {return new Symbol(sym.INH_TPA, yychar, yyline, yytext());}
/*INH TSTA */
( "tsta" | "TSTA" ) {return new Symbol(sym.INH_TSTA, yychar, yyline, yytext());}
/*INH TSTB */
( "tstb" | "TSTB" ) {return new Symbol(sym.INH_TSTB, yychar, yyline, yytext());}
/*INH TSX */
( "tsx" | "TSX" ) {return new Symbol(sym.INH_TSX, yychar, yyline, yytext());}
/*INH TSY */
( "tsy" | "TSY" ) {return new Symbol(sym.INH_TSY, yychar, yyline, yytext());}
/*INH TXS */
( "txs" | "TXS" ) {return new Symbol(sym.INH_TXS, yychar, yyline, yytext());}
/*INH TYS */
( "tys" | "TYS" ) {return new Symbol(sym.INH_TYS, yychar, yyline, yytext());}
/*INH WAI */
( "wai" | "WAI" ) {return new Symbol(sym.INH_WAI, yychar, yyline, yytext());}
/*INH XGDX */
( "xgdx" | "XGDX" ) {return new Symbol(sym.INH_XGDX, yychar, yyline, yytext());}
/*INH XGDY */
( "xgdy" | "XGDY" ) {return new Symbol(sym.INH_XGDY, yychar, yyline, yytext());}
/*IMM ADCA */
( "adca #" | "ADCA #" ) {return new Symbol(sym.IMM_ADCA, yychar, yyline, yytext());}
/*IMM ADCB */
( "adcb #" | "ADCB #" ) {return new Symbol(sym.IMM_ADCB, yychar, yyline, yytext());}
/*IMM ADDA */ 
( "adda #" | "ADDA #" ) {return new Symbol(sym.IMM_ADDA, yychar, yyline, yytext());}
/*IMM ADDB */
( "addb #" | "ADDB #" ) {return new Symbol(sym.IMM_ADDB, yychar, yyline, yytext());}
/*IMM ADDD */
( "addd #" | "ADDD #" ) {return new Symbol(sym.IMM_ADDD, yychar, yyline, yytext());}
/*IMM ANDA */
( "anda #" | "ANDA #" ) {return new Symbol(sym.IMM_ANDA, yychar, yyline, yytext());}
/*IMM ANDB */ 
( "andb #" | "ANDB #") {return new Symbol(sym.IMM_ANDB, yychar, yyline, yytext());}
/*IMM BITA */ 
( "bita #" | "BITA #") {return new Symbol(sym.IMM_BITA, yychar, yyline, yytext());}
/*IMM BITB */ 
( "bitb #" | "BITB #") {return new Symbol(sym.IMM_BITB, yychar, yyline, yytext());}
/*IMM CMPA */ 
( "cmpa #" | "CMPA #") {return new Symbol(sym.IMM_CMPA, yychar, yyline, yytext());}
/*IMM CMPB */ 
( "cmpb #" | "CMPB #") {return new Symbol(sym.IMM_CMPB, yychar, yyline, yytext());}
/*IMM CPD */ 
( "cpd #" | "CPD #") {return new Symbol(sym.IMM_CPD, yychar, yyline, yytext());}
/*IMM CPX */ 
( "cpx #" | "CPX #") {return new Symbol(sym.IMM_CPX, yychar, yyline, yytext());}
/*IMM CPY */ 
( "cpy #" | "CPY #") {return new Symbol(sym.IMM_CPY, yychar, yyline, yytext());}
/*IMM EORA */ 
( "eora #" | "EORA #") {return new Symbol(sym.IMM_EORA, yychar, yyline, yytext());}
/*IMM EORB */ 
( "eorb #" | "EORB #") {return new Symbol(sym.IMM_EORB, yychar, yyline, yytext());}
/*IMM LDAA */ 
( "ldaa #" | "LDAA #") {return new Symbol(sym.IMM_LDAA, yychar, yyline, yytext());}
/*IMM LDAB */ 
( "ldab #" | "LDAB #") {return new Symbol(sym.IMM_LDAB, yychar, yyline, yytext());}
/*IMM LDD */ 
( "ldd #" | "LDD #") {return new Symbol(sym.IMM_LDD, yychar, yyline, yytext());}
/*IMM LDS */ 
( "lds #" | "LDS #") {return new Symbol(sym.IMM_LDS, yychar, yyline, yytext());}
/*IMM LDX */ 
( "ldx #" | "LDX #") {return new Symbol(sym.IMM_LDX, yychar, yyline, yytext());}
/*IMM LDY */ 
( "ldy #" | "LDY #") {return new Symbol(sym.IMM_LDY, yychar, yyline, yytext());}
/*IMM ORAA */ 
( "oraa #" | "ORAA #") {return new Symbol(sym.IMM_ORAA, yychar, yyline, yytext());}
/*IMM ORAB */ 
( "orab #" | "ORAB #") {return new Symbol(sym.IMM_ORAB, yychar, yyline, yytext());}
/*IMM SBCA */ 
( "sbca #" | "SBCA #") {return new Symbol(sym.IMM_SBCA, yychar, yyline, yytext());}
/*IMM SBCB */ 
( "sbcb #" | "SBCB #") {return new Symbol(sym.IMM_SBCB, yychar, yyline, yytext());}
/*IMM SUBA */ 
( "suba #" | "SUBA #") {return new Symbol(sym.IMM_SUBA, yychar, yyline, yytext());}
/*IMM SUBB */ 
( "subb #" | "SUBB #") {return new Symbol(sym.IMM_SUBB, yychar, yyline, yytext());}
/*IMM SUBD */ 
( "subd #" | "SUBD #") {return new Symbol(sym.IMM_SUBD, yychar, yyline, yytext());}
/*DIR ADCA */
( "adca" | "ADCA" ) {return new Symbol(sym.DIR_ADCA, yychar, yyline, yytext());}
/*DIR ADCB */
( "adcb" | "ADCB" ) {return new Symbol(sym.DIR_ADCB, yychar, yyline, yytext());}
/*DIR ADDA */ 
( "adda" | "ADDA" ) {return new Symbol(sym.DIR_ADDA, yychar, yyline, yytext());}
/*DIR ADDB */
( "addb" | "ADDB" ) {return new Symbol(sym.DIR_ADDB, yychar, yyline, yytext());}
/*DIR ADDD */
( "addd" | "ADDD" ) {return new Symbol(sym.DIR_ADDD, yychar, yyline, yytext());}
/*DIR ANDA */
( "anda" | "ANDA" ) {return new Symbol(sym.DIR_ANDA, yychar, yyline, yytext());}
/*DIR ANDB */ 
( "andb" | "ANDB") {return new Symbol(sym.DIR_ANDB, yychar, yyline, yytext());}
/*DIR BCLR */ 
( "bclr" | "BCLR") {return new Symbol(sym.DIR_BCLR, yychar, yyline, yytext());}
/*DIR BITA */ 
( "bita" | "BITA") {return new Symbol(sym.DIR_BITA, yychar, yyline, yytext());}
/*DIR BITB */ 
( "bitb" | "BITB") {return new Symbol(sym.DIR_BITB, yychar, yyline, yytext());}
/*DIR BRCLR */ 
( "brclr" | "BRCLR") {return new Symbol(sym.DIR_BRCLR, yychar, yyline, yytext());}
/*DIR BRSET */ 
( "brset" | "BRSET") {return new Symbol(sym.DIR_BRSET, yychar, yyline, yytext());}
/*DIR BSET */ 
( "bset" | "BSET") {return new Symbol(sym.DIR_BSET, yychar, yyline, yytext());}
/*DIR CMPA */ 
( "cmpa" | "CMPA") {return new Symbol(sym.DIR_CMPA, yychar, yyline, yytext());}
/*DIR CMPB */ 
( "cmpb" | "CMPB") {return new Symbol(sym.DIR_CMPB, yychar, yyline, yytext());}
/*DIR CPD */ 
( "cpd" | "CPD") {return new Symbol(sym.DIR_CPD, yychar, yyline, yytext());}
/*DIR CPX */ 
( "cpx" | "CPX") {return new Symbol(sym.DIR_CPX, yychar, yyline, yytext());}
/*DIR CPY */ 
( "cpy" | "CPY") {return new Symbol(sym.DIR_CPY, yychar, yyline, yytext());}
/*DIR EORA */ 
( "eora" | "EORA") {return new Symbol(sym.DIR_EORA, yychar, yyline, yytext());}
/*DIR EORB */ 
( "eorb" | "EORB") {return new Symbol(sym.DIR_EORB, yychar, yyline, yytext());}
/*DIR JSR */ 
( "jsr" | "JSR") {return new Symbol(sym.DIR_JSR, yychar, yyline, yytext());}
/*DIR LDAA */ 
( "ldaa" | "LDAA") {return new Symbol(sym.DIR_LDAA, yychar, yyline, yytext());}
/*DIR LDAB */ 
( "ldab" | "LDAB") {return new Symbol(sym.DIR_LDAB, yychar, yyline, yytext());}
/*DIR LDD */ 
( "ldd" | "LDD") {return new Symbol(sym.DIR_LDD, yychar, yyline, yytext());}
/*DIR LDS */ 
( "lds" | "LDS") {return new Symbol(sym.DIR_LDS, yychar, yyline, yytext());}
/*DIR LDX */ 
( "ldx" | "LDX") {return new Symbol(sym.DIR_LDX, yychar, yyline, yytext());}
/*DIR LDY */ 
( "ldy" | "LDY") {return new Symbol(sym.DIR_LDY, yychar, yyline, yytext());}
/*DIR ORAA */ 
( "oraa" | "ORAA") {return new Symbol(sym.DIR_ORAA, yychar, yyline, yytext());}
/*DIR ORAB */ 
( "orab" | "ORAB") {return new Symbol(sym.DIR_ORAB, yychar, yyline, yytext());}
/*DIR SBCA */ 
( "sbca" | "SBCA") {return new Symbol(sym.DIR_SBCA, yychar, yyline, yytext());}
/*DIR SBCB */ 
( "sbcb" | "SBCB") {return new Symbol(sym.DIR_SBCB, yychar, yyline, yytext());}
/*DIR STAA */ 
( "staa" | "STAA") {return new Symbol(sym.DIR_STAA, yychar, yyline, yytext());}
/*DIR STAB */ 
( "stab" | "STAB") {return new Symbol(sym.DIR_STAB, yychar, yyline, yytext());}
/*DIR STD */ 
( "std" | "STD") {return new Symbol(sym.DIR_STD, yychar, yyline, yytext());}
/*DIR STS */ 
( "sts" | "STS") {return new Symbol(sym.DIR_STS, yychar, yyline, yytext());}
/*DIR STX */ 
( "stx" | "STX") {return new Symbol(sym.DIR_STX, yychar, yyline, yytext());}
/*DIR STY */ 
( "sty" | "STY") {return new Symbol(sym.DIR_STY, yychar, yyline, yytext());}
/*DIR SUBA */ 
( "suba" | "SUBA") {return new Symbol(sym.DIR_SUBA, yychar, yyline, yytext());}
/*DIR SUBB */ 
( "subb" | "SUBB") {return new Symbol(sym.DIR_SUBB, yychar, yyline, yytext());}
/*DIR SUBD */ 
( "subd" | "SUBD") {return new Symbol(sym.DIR_SUBD, yychar, yyline, yytext());}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
"*".* {/*Ignore*/}
"#" {return new Symbol(sym.Gato, yychar, yyline, yytext());}
"'" {return new Symbol(sym.Apostrofe, yychar, yyline, yytext());}
"$" {return new Symbol(sym.SignoPeso, yychar, yyline, yytext());}
{L}({L}|{D})* {return new Symbol(sym.Otro, yychar, yyline, yytext());}
("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline, yytext());}
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
