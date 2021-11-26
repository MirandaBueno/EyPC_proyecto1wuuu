package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
%caseless
L=[a-zA-Z_]
D=[0-9]
H =[0-9][A-F_]
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
( "adca"{espacio}+"#$"{H}{2})|("adca"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADCA_HEXA;}
( "adca"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADCA_DEC;}
( "adca"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADCA_CHAR;}
/*IMM ADCB */
( "adcb"{espacio}+"#$"{H}{2}) | ("adcb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADCB_HEXA;}
( "adcb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADCB_DEC;}
( "adcb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADCB_CHAR;}
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
("adca"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ADCA_HEXA;}
("adca"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ADCA_DEC;}
/*DIR ADCB */
("adcb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ADCB_HEXA;}
("adcb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ADCB_DEC;}
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

//ASÍ ES COMO LO PUSE
/*INDX ADCA */
("adca"{espacio}+"$"{H}{2}",X") {lexeme=yytext(); return INDX_ADCA;}
/*INDX ADCB */
"adcb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADCB;}
/*INDY ADCA */
"adca"{espacio}+"$"{D}{2}",Y" {lexeme=yytext(); return INDY_ADCA;}
/*INDY ADCB */
"adcb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADCB;}

/*INDX ADCA */
"adca"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADCA;}
"adcb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADCB;}
"adda"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADDA;}
"addb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADDB;}
"addd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADDD;}
"anda"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ANDA;}
"andb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ANDB;}
"asl"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ASL;}
"asr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ASR;}
"bclr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BCLR;}
"bita"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BITA;}
"bitb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BITB;}
"brclr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BRCLR;}
"brset"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BRSET;}
"bset"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BSET;}
"clr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CLR;}
"cmpa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CMPA;}
"cmpb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CMPB;}
"com"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_COM;}
"cpd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CPD;}
"cpx"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CPX;}
"cpy"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CPY;}
"dec"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_DEC;}
"eora"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_EORA;}
"eorb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_EORB;}
"inc"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_INC;}
"jmp"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_JMP;}
"jsr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_JSR;}
"ldaa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDAA;}
"ldab"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDAB;}
"ldd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDD;}
"lds"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDS;}
"ldx"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDX;}
"ldy"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDY;}
"lsl"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LSL;}
"lsr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LSR;}
"neg"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_NEG;}
"oraa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ORAA;}
"orab"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ORAB;}
"rol"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ROL;}
"ror"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ROR;}
"sbca"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SBCA;}
"sbcb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SBCB;}
"staa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STAA;}
"stab"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STAB;}
"std"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STD;}
"sts"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STS;}
"stx"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STX;}
"sty"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STY;}
"suba"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SUBA;}
"subb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SUBB;}
"subd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SUBD;}
"tst"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_TST;}



/*INDY ADCA */
"adca"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADCA;}
"adcb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADCB;}
"adda"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADDA;}
"addb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADDB;}
"addd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADDD;}
"anda"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ANDA;}
"andb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ANDB;}
"asl"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ASL;}
"asr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ASR;}
"bclr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BCLR;}
"bita"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BITA;}
"bitb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BITB;}
"brclr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BRCLR;}
"brset"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BRSET;}
"bset"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BSET;}
"clr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CLR;}
"cmpa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CMPA;}
"cmpb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CMPB;}
"com"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_COM;}
"cpd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CPD;}
"cpx"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CPX;}
"cpy"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CPY;}
"dec"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_DEC;}
"eora"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_EORA;}
"eorb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_EORB;}
"inc"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_INC;}
"jmp"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_JMP;}
"jsr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_JSR;}
"ldaa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDAA;}
"ldab"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDAB;}
"ldd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDD;}
"lds"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDS;}
"ldx"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDX;}
"ldy"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDY;}
"lsl"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LSL;}
"lsr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LSR;}
"neg"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_NEG;}
"oraa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ORAA;}
"orab"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ORAB;}
"rol"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ROL;}
"ror"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ROR;}
"sbca"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SBCA;}
"sbcb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SBCB;}
"staa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STAA;}
"stab"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STAB;}
"std"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STD;}
"sts"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STS;}
"stx"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STX;}
"sty"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STY;}
"suba"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SUBA;}
"subb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SUBB;}
"subd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SUBD;}
"tst"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_TST;}

{espacio} {return Espacio;}
("\n")  {return Linea;}
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
("(-"{D}+")")|{D}+ {lexeme=yytext(); return Numero;}
 . {return ERROR;}

