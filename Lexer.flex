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
/*INH ABA */
( "aba" | "ABA" ) {lexeme = yytext(); return INH_ABA;}
/*INH ABX */
( "abx" | "ABX" ) {lexeme = yytext(); return INH_ABX;}
/*INH ABY */
( "aby" | "ABY" ) {lexeme = yytext(); return INH_ABY;}
/*INH ASLA */
( "asla" | "ASLA" ) {lexeme = yytext(); return INH_ASLA;}
/*INH ASLB */
( "aslb" | "ASLB" ) {lexeme = yytext(); return INH_ASLB;}
/*INH ASLD */
( "asld" | "ASLD" ) {lexeme = yytext(); return INH_ASLD;}
/*INH ASRA */
( "asra" | "ASRA" ) {lexeme = yytext(); return INH_ASRA;}
/*INH ASRB */
( "asrb" | "ASRB" ) {lexeme = yytext(); return INH_ASRB;}
/*INH CBA */
( "cba" | "CBA" ) {lexeme = yytext(); return INH_CBA;}
/*INH CLC */
( "clc" | "CLC" ) {lexeme = yytext(); return INH_CLC;}
/*INH CLI */
( "cli" | "CLI" ) {lexeme = yytext(); return INH_CLI;}
/*INH CLRA */
( "clra" | "CLRA" ) {lexeme = yytext(); return INH_CLRA;}
/*INH CLRB */
( "clrb" | "CLRB" ) {lexeme = yytext(); return INH_CLRB;}
/*INH CLV */
( "clv" | "CLV" ) {lexeme = yytext(); return INH_CLV;}
/*INH COMA */
( "coma" | "COMA" ) {lexeme = yytext(); return INH_COMA;}
/*INH COMB */
( "comb" | "COMB" ) {lexeme = yytext(); return INH_COMB;}
/*INH DAA */
( "daa" | "DAA" ) {lexeme = yytext(); return INH_DAA;}
/*INH DECA */
( "deca" | "DECA" ) {lexeme = yytext(); return INH_DECA;}
/*INH DECB */
( "decb" | "DECB" ) {lexeme = yytext(); return INH_DECB;}
/*INH DES */
( "des" | "DES" ) {lexeme = yytext(); return INH_DES;}
/*INH DEX */
( "dex" | "DEX" ) {lexeme = yytext(); return INH_DEX;}
/*INH DEY */
( "dey" | "DEY" ) {lexeme = yytext(); return INH_DEY;}
/*INH FDIV */
( "fdiv" | "FDIV" ) {lexeme = yytext(); return INH_FDIV;}
/*INH IDIV */
( "idiv" | "IDIV" ) {lexeme = yytext(); return INH_IDIV;}
/*INH INCA */
( "inca" | "INCA" ) {lexeme = yytext(); return INH_INCA;}
/*INH INCB */
( "incb" | "INCB" ) {lexeme = yytext(); return INH_INCB;}
/*INH INS */
( "ins" | "INS" ) {lexeme = yytext(); return INH_INS;}
/*INH INX */
( "inx" | "INX" ) {lexeme = yytext(); return INH_INX;}
/*INH INY */
( "iny" | "INY" ) {lexeme = yytext(); return INH_INY;}
/*INH LSLA */
( "lsla" | "LSLA" ) {lexeme = yytext(); return INH_LSLA;}
/*INH LSLB */
( "lslb" | "LSLB" ) {lexeme = yytext(); return INH_LSLB;}
/*INH LSLD */
( "lsld" | "LSLD" ) {lexeme = yytext(); return INH_LSLD;}
/*INH LSRA */
( "lsra" | "LSRA" ) {lexeme = yytext(); return INH_LSRA;}
/*INH LSRB */
( "lsrb" | "LSRB" ) {lexeme = yytext(); return INH_LSRB;}
/*INH LSRD */
( "lsrd" | "LSRD" ) {lexeme = yytext(); return INH_LSRD;}
/*INH MUL */
( "mul" | "MUL" ) {lexeme = yytext(); return INH_MUL;}
/*INH NEGA */
( "nega" | "NEGA" ) {lexeme = yytext(); return INH_NEGA;}
/*INH NEGB */
( "negb" | "NEGB" ) {lexeme = yytext(); return INH_NEGB;}
/*INH NOP */
( "nop" | "NOP" ) {lexeme = yytext(); return INH_NOP;}
/*INH PSHA */
( "psha" | "PSHA" ) {lexeme = yytext(); return INH_PSHA;}
/*INH PSHB */
( "pshb" | "PSHB" ) {lexeme = yytext(); return INH_PSHB;}
/*INH PSHX */
( "pshx" | "PSHX" ) {lexeme = yytext(); return INH_PSHX;}
/*INH PSHY */
( "pshy" | "PSHY" ) {lexeme = yytext(); return INH_PSHY;}
/*INH PULA */
( "pula" | "PULA" ) {lexeme = yytext(); return INH_PULA;}
/*INH PULB */
( "pulb" | "PULB" ) {lexeme = yytext(); return INH_PULB;}
/*INH PULX */
( "pulx" | "PULX" ) {lexeme = yytext(); return INH_PULX;}
/*INH PULY */
( "puly" | "PULY" ) {lexeme = yytext(); return INH_PULY;}
/*INH ROLA */
( "rola" | "ROLA" ) {lexeme = yytext(); return INH_ROLA;}
/*INH ROLB */
( "rolb" | "ROLB" ) {lexeme = yytext(); return INH_ROLB;}
/*INH RORA */
( "rora" | "RORA" ) {lexeme = yytext(); return INH_RORA;}
/*INH RORB */
( "rorb" | "RORB" ) {lexeme = yytext(); return INH_RORB;}
/*INH RTI */
( "rti" | "RTI" ) {lexeme = yytext(); return INH_RTI;}
/*INH RTS */
( "rts" | "RTS" ) {lexeme = yytext(); return INH_RTS;}
/*INH SBA */
( "sba" | "SBA" ) {lexeme = yytext(); return INH_SBA;}
/*INH SEC */
( "sec" | "SEC" ) {lexeme = yytext(); return INH_SEC;}
/*INH SEI */
( "sei" | "SEI" ) {lexeme = yytext(); return INH_SEI;}
/*INH SEV */
( "sev" | "SEV" ) {lexeme = yytext(); return INH_SEV;}
/*INH STOP */
( "stop" | "STOP" ) {lexeme = yytext(); return INH_STOP;}
/*INH SWI */
( "swi" | "SWI" ) {lexeme = yytext(); return INH_SWI;}
/*INH TAB */
( "tab" | "TAB" ) {lexeme = yytext(); return INH_TAB;}
/*INH TAP */
( "tap" | "TAP" ) {lexeme = yytext(); return INH_TAP;}
/*INH TBA */
( "tba" | "TBA" ) {lexeme = yytext(); return INH_TBA;}
/*INH TETS */
( "tets" | "TETS" ) {lexeme = yytext(); return INH_TETS;}
/*INH TPA */
( "tpa" | "TPA" ) {lexeme = yytext(); return INH_TPA;}
/*INH TSTA */
( "tsta" | "TSTA" ) {lexeme = yytext(); return INH_TSTA;}
/*INH TSTB */
( "tstb" | "TSTB" ) {lexeme = yytext(); return INH_TSTB;}
/*INH TSX */
( "tsx" | "TSX" ) {lexeme = yytext(); return INH_TSX;}
/*INH TSY */
( "tsy" | "TSY" ) {lexeme = yytext(); return INH_TSY;}
/*INH TXS */
( "txs" | "TXS" ) {lexeme = yytext(); return INH_TXS;}
/*INH TYS */
( "tys" | "TYS" ) {lexeme = yytext(); return INH_TYS;}
/*INH WAI */
( "wai" | "WAI" ) {lexeme = yytext(); return INH_WAI;}
/*INH XGDX */
( "xgdx" | "XGDX" ) {lexeme = yytext(); return INH_XGDX;}
/*INH XGDY */
( "xgdy" | "XGDY" ) {lexeme = yytext(); return INH_XGDY;}
/*IMM ADCA */
( "adca #" | "ADCA #" ) {lexeme = yytext(); return IMM_ADCA;}
/*IMM ADCB */
( "adcb #" | "ADCB #" ) {lexeme = yytext(); return IMM_ADCB;}
/*IMM ADDA */ 
( "adda #" | "ADDA #" ) {lexeme = yytext(); return IMM_ADDA;}
/*IMM ADDB */
( "addb #" | "ADDB #" ) {lexeme = yytext(); return IMM_ADDB;}
/*IMM ADDD */
( "addd #" | "ADDD #" ) {lexeme = yytext(); return IMM_ADDD;}
/*IMM ANDA */
( "anda #" | "ANDA #" ) {lexeme = yytext(); return IMM_ANDA;}
/*IMM ANDB */ 
( "andb #" | "ANDB #") {lexeme = yytext(); return IMM_ANDB;}
/*IMM BITA */ 
( "bita #" | "BITA #") {lexeme = yytext(); return IMM_BITA;}
/*IMM BITB */ 
( "bitb #" | "BITB #") {lexeme = yytext(); return IMM_BITB;}
/*IMM CMPA */ 
( "cmpa #" | "CMPA #") {lexeme = yytext(); return IMM_CMPA;}
/*IMM CMPB */ 
( "cmpb #" | "CMPB #") {lexeme = yytext(); return IMM_CMPB;}
/*IMM CPD */ 
( "cpd #" | "CPD #") {lexeme = yytext(); return IMM_CPD;}
/*IMM CPX */ 
( "cpx #" | "CPX #") {lexeme = yytext(); return IMM_CPX;}
/*IMM CPY */ 
( "cpy #" | "CPY #") {lexeme = yytext(); return IMM_CPY;}
/*IMM EORA */ 
( "eora #" | "EORA #") {lexeme = yytext(); return IMM_EORA;}
/*IMM EORB */ 
( "eorb #" | "EORB #") {lexeme = yytext(); return IMM_EORB;}
/*IMM LDAA */ 
( "ldaa #" | "LDAA #") {lexeme = yytext(); return IMM_LDAA;}
/*IMM LDAB */ 
( "ldab #" | "LDAB #") {lexeme = yytext(); return IMM_LDAB;}
/*IMM LDD */ 
( "ldd #" | "LDD #") {lexeme = yytext(); return IMM_LDD;}
/*IMM LDS */ 
( "lds #" | "LDS #") {lexeme = yytext(); return IMM_LDS;}
/*IMM LDX */ 
( "ldx #" | "LDX #") {lexeme = yytext(); return IMM_LDX;}
/*IMM LDY */ 
( "ldy #" | "LDY #") {lexeme = yytext(); return IMM_LDY;}
/*IMM ORAA */ 
( "oraa #" | "ORAA #") {lexeme = yytext(); return IMM_ORAA;}
/*IMM ORAB */ 
( "orab #" | "ORAB #") {lexeme = yytext(); return IMM_ORAB;}
/*IMM SBCA */ 
( "sbca #" | "SBCA #") {lexeme = yytext(); return IMM_SBCA;}
/*IMM SBCB */ 
( "sbcb #" | "SBCB #") {lexeme = yytext(); return IMM_SBCB;}
/*IMM SUBA */ 
( "suba #" | "SUBA #") {lexeme = yytext(); return IMM_SUBA;}
/*IMM SUBB */ 
( "subb #" | "SUBB #") {lexeme = yytext(); return IMM_SUBB;}
/*IMM SUBD */ 
( "subd #"| "SUBD #" {lexeme = yytext(); return IMM_SUBD;}
/*DIR ADCA */
( "adca" | "ADCA" ) {lexeme = yytext(); return DIR_ADCA;}
/*DIR ADCB */
( "adcb" | "ADCB" ) {lexeme = yytext(); return DIR_ADCB;}
/*DIR ADDA */ 
( "adda" | "ADDA" ) {lexeme = yytext(); return DIR_ADDA;}
/*DIR ADDB */
( "addb" | "ADDB" ) {lexeme = yytext(); return DIR_ADDB;}
/*DIR ADDD */
( "addd" | "ADDD" ) {lexeme = yytext(); return DIR_ADDD;}
/*DIR ANDA */
( "anda" | "ANDA" ) {lexeme = yytext(); return DIR_ANDA;}
/*DIR ANDB */ 
( "andb" | "ANDB") {lexeme = yytext(); return DIR_ANDB;}
/*DIR BCLR */ 
( "bclr" | "BCLR") {lexeme = yytext(); return DIR_BCLR;}
/*DIR BITA */ 
( "bita" | "BITA") {lexeme = yytext(); return DIR_BITA;}
/*DIR BITB */ 
( "bitb" | "BITB") {lexeme = yytext(); return DIR_BITB;}
/*DIR BRCLR */ 
( "brclr" | "BRCLR") {lexeme = yytext(); return DIR_BRCLR;}
/*DIR BRSET */ 
( "brset" | "BRSET") {lexeme = yytext(); return DIR_BRSET;}
/*DIR BSET */ 
( "bset" | "BSET") {lexeme = yytext(); return DIR_BSET;}
/*DIR CMPA */ 
( "cmpa" | "CMPA") {lexeme = yytext(); return DIR_CMPA;}
/*DIR CMPB */ 
( "cmpb" | "CMPB") {lexeme = yytext(); return DIR_CMPB;}
/*DIR CPD */ 
( "cpd" | "CPD") {lexeme = yytext(); return DIR_CPD;}
/*DIR CPX */ 
( "cpx" | "CPX") {lexeme = yytext(); return DIR_CPX;}
/*DIR CPY */ 
( "cpy" | "CPY") {lexeme = yytext(); return DIR_CPY;}
/*DIR EORA */ 
( "eora" | "EORA") {lexeme = yytext(); return DIR_EORA;}
/*DIR EORB */ 
( "eorb" | "EORB") {lexeme = yytext(); return DIR_EORB;}
/*DIR JSR */ 
( "jsr" | "JSR") {lexeme = yytext(); return DIR_JSR;}
/*DIR LDAA */ 
( "ldaa" | "LDAA") {lexeme = yytext(); return DIR_LDAA;}
/*DIR LDAB */ 
( "ldab" | "LDAB") {lexeme = yytext(); return DIR_LDAB;}
/*DIR LDD */ 
( "ldd" | "LDD") {lexeme = yytext(); return DIR_LDD;}
/*DIR LDS */ 
( "lds" | "LDS") {lexeme = yytext(); return DIR_LDS;}
/*DIR LDX */ 
( "ldx" | "LDX") {lexeme = yytext(); return DIR_LDX;}
/*DIR LDY */ 
( "ldy" | "LDY") {lexeme = yytext(); return DIR_LDY;}
/*DIR ORAA */ 
( "oraa" | "ORAA") {lexeme = yytext(); return DIR_ORAA;}
/*DIR ORAB */ 
( "orab" | "ORAB") {lexeme = yytext(); return DIR_ORAB;}
/*DIR SBCA */ 
( "sbca" | "SBCA") {lexeme = yytext(); return DIR_SBCA;}
/*DIR SBCB */ 
( "sbcb" | "SBCB") {lexeme = yytext(); return DIR_SBCB;}
/*DIR STAA */ 
( "staa" | "STAA") {lexeme = yytext(); return DIR_STAA;}
/*DIR STAB */ 
( "stab" | "STAB") {lexeme = yytext(); return DIR_STAB;}
/*DIR STD */ 
( "std" | "STD") {lexeme = yytext(); return DIR_STD;}
/*DIR STS */ 
( "sts" | "STS") {lexeme = yytext(); return DIR_STS;}
/*DIR STX */ 
( "stx" | "STX") {lexeme = yytext(); return DIR_STX;}
/*DIR STY */ 
( "sty" | "STY") {lexeme = yytext(); return DIR_STY;}
/*DIR SUBA */ 
( "suba" | "SUBA") {lexeme = yytext(); return DIR_SUBA;}
/*DIR SUBB */ 
( "subb" | "SUBB") {lexeme = yytext(); return DIR_SUBB;}
/*DIR SUBD */ 
( "subd" | "SUBD") {lexeme = yytext(); return DIR_SUBD;}
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
