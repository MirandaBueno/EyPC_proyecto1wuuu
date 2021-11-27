package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
%caseless
L=[a-zA-Z_]
D=[0-9]
H =[0-9A-F]
espacio=[ ,\t,\r]
%{
    public String lexeme;
%}
%%
{espacio}+"ORG"{espacio}+"$"{H}{4} {lexeme=yytext(); return ORG;}
({L}({L}|{D})*){espacio}+"EQU"{espacio}+"$"{H}{4} {lexeme=yytext(); return EQU;}
FCB {lexeme=yytext(); return FCB;}
END {lexeme=yytext(); return END;}
/*INH ABA */
{espacio}+( "aba" | "ABA" ) {lexeme = yytext(); return INH_ABA;}
/*INH ABX */
{espacio}+( "abx" | "ABX" ) {lexeme = yytext(); return INH_ABX;}
/*INH ABY */
{espacio}+( "aby" | "ABY" ) {lexeme = yytext(); return INH_ABY;}
/*INH ASLA */
{espacio}+( "asla" | "ASLA" ) {lexeme = yytext(); return INH_ASLA;}
/*INH ASLB */
{espacio}+( "aslb" | "ASLB" ) {lexeme = yytext(); return INH_ASLB;}
/*INH ASLD */
{espacio}+( "asld" | "ASLD" ) {lexeme = yytext(); return INH_ASLD;}
/*INH ASRA */
{espacio}+( "asra" | "ASRA" ) {lexeme = yytext(); return INH_ASRA;}
/*INH ASRB */
{espacio}+( "asrb" | "ASRB" ) {lexeme = yytext(); return INH_ASRB;}
/*INH CBA */
{espacio}+( "cba" | "CBA" ) {lexeme = yytext(); return INH_CBA;}
/*INH CLC */
{espacio}+( "clc" | "CLC" ) {lexeme = yytext(); return INH_CLC;}
/*INH CLI */
{espacio}+( "cli" | "CLI" ) {lexeme = yytext(); return INH_CLI;}
/*INH CLRA */
{espacio}+( "clra" | "CLRA" ) {lexeme = yytext(); return INH_CLRA;}
/*INH CLRB */
{espacio}+( "clrb" | "CLRB" ) {lexeme = yytext(); return INH_CLRB;}
/*INH CLV */
{espacio}+( "clv" | "CLV" ) {lexeme = yytext(); return INH_CLV;}
/*INH COMA */
{espacio}+( "coma" | "COMA" ) {lexeme = yytext(); return INH_COMA;}
/*INH COMB */
{espacio}+( "comb" | "COMB" ) {lexeme = yytext(); return INH_COMB;}
/*INH DAA */
{espacio}+( "daa" | "DAA" ) {lexeme = yytext(); return INH_DAA;}
/*INH DECA */
{espacio}+( "deca" | "DECA" ) {lexeme = yytext(); return INH_DECA;}
/*INH DECB */
{espacio}+( "decb" | "DECB" ) {lexeme = yytext(); return INH_DECB;}
/*INH DES */
{espacio}+( "des" | "DES" ) {lexeme = yytext(); return INH_DES;}
/*INH DEX */
{espacio}+( "dex" | "DEX" ) {lexeme = yytext(); return INH_DEX;}
/*INH DEY */
{espacio}+( "dey" | "DEY" ) {lexeme = yytext(); return INH_DEY;}
/*INH FDIV */
{espacio}+( "fdiv" | "FDIV" ) {lexeme = yytext(); return INH_FDIV;}
/*INH IDIV */
{espacio}+( "idiv" | "IDIV" ) {lexeme = yytext(); return INH_IDIV;}
/*INH INCA */
{espacio}+( "inca" | "INCA" ) {lexeme = yytext(); return INH_INCA;}
/*INH INCB */
{espacio}+( "incb" | "INCB" ) {lexeme = yytext(); return INH_INCB;}
/*INH INS */
{espacio}+( "ins" | "INS" ) {lexeme = yytext(); return INH_INS;}
/*INH INX */
{espacio}+( "inx" | "INX" ) {lexeme = yytext(); return INH_INX;}
/*INH INY */
{espacio}+( "iny" | "INY" ) {lexeme = yytext(); return INH_INY;}
/*INH LSLA */
{espacio}+( "lsla" | "LSLA" ) {lexeme = yytext(); return INH_LSLA;}
/*INH LSLB */
{espacio}+( "lslb" | "LSLB" ) {lexeme = yytext(); return INH_LSLB;}
/*INH LSLD */
{espacio}+( "lsld" | "LSLD" ) {lexeme = yytext(); return INH_LSLD;}
/*INH LSRA */
{espacio}+( "lsra" | "LSRA" ) {lexeme = yytext(); return INH_LSRA;}
/*INH LSRB */
{espacio}+( "lsrb" | "LSRB" ) {lexeme = yytext(); return INH_LSRB;}
/*INH LSRD */
{espacio}+( "lsrd" | "LSRD" ) {lexeme = yytext(); return INH_LSRD;}
/*INH MUL */
{espacio}+( "mul" | "MUL" ) {lexeme = yytext(); return INH_MUL;}
/*INH NEGA */
{espacio}+( "nega" | "NEGA" ) {lexeme = yytext(); return INH_NEGA;}
/*INH NEGB */
{espacio}+( "negb" | "NEGB" ) {lexeme = yytext(); return INH_NEGB;}
/*INH NOP */
{espacio}+( "nop" | "NOP" ) {lexeme = yytext(); return INH_NOP;}
/*INH PSHA */
{espacio}+( "psha" | "PSHA" ) {lexeme = yytext(); return INH_PSHA;}
/*INH PSHB */
{espacio}+( "pshb" | "PSHB" ) {lexeme = yytext(); return INH_PSHB;}
/*INH PSHX */
{espacio}+( "pshx" | "PSHX" ) {lexeme = yytext(); return INH_PSHX;}
/*INH PSHY */
{espacio}+( "pshy" | "PSHY" ) {lexeme = yytext(); return INH_PSHY;}
/*INH PULA */
{espacio}+( "pula" | "PULA" ) {lexeme = yytext(); return INH_PULA;}
/*INH PULB */
{espacio}+( "pulb" | "PULB" ) {lexeme = yytext(); return INH_PULB;}
/*INH PULX */
{espacio}+( "pulx" | "PULX" ) {lexeme = yytext(); return INH_PULX;}
/*INH PULY */
{espacio}+( "puly" | "PULY" ) {lexeme = yytext(); return INH_PULY;}
/*INH ROLA */
{espacio}+( "rola" | "ROLA" ) {lexeme = yytext(); return INH_ROLA;}
/*INH ROLB */
{espacio}+( "rolb" | "ROLB" ) {lexeme = yytext(); return INH_ROLB;}
/*INH RORA */
{espacio}+( "rora" | "RORA" ) {lexeme = yytext(); return INH_RORA;}
/*INH RORB */
{espacio}+( "rorb" | "RORB" ) {lexeme = yytext(); return INH_RORB;}
/*INH RTI */
{espacio}+( "rti" | "RTI" ) {lexeme = yytext(); return INH_RTI;}
/*INH RTS */
{espacio}+( "rts" | "RTS" ) {lexeme = yytext(); return INH_RTS;}
/*INH SBA */
{espacio}+( "sba" | "SBA" ) {lexeme = yytext(); return INH_SBA;}
/*INH SEC */
{espacio}+( "sec" | "SEC" ) {lexeme = yytext(); return INH_SEC;}
/*INH SEI */
{espacio}+( "sei" | "SEI" ) {lexeme = yytext(); return INH_SEI;}
/*INH SEV */
{espacio}+( "sev" | "SEV" ) {lexeme = yytext(); return INH_SEV;}
/*INH STOP */
{espacio}+( "stop" | "STOP" ) {lexeme = yytext(); return INH_STOP;}
/*INH SWI */
{espacio}+( "swi" | "SWI" ) {lexeme = yytext(); return INH_SWI;}
/*INH TAB */
{espacio}+( "tab" | "TAB" ) {lexeme = yytext(); return INH_TAB;}
/*INH TAP */
{espacio}+( "tap" | "TAP" ) {lexeme = yytext(); return INH_TAP;}
/*INH TBA */
{espacio}+( "tba" | "TBA" ) {lexeme = yytext(); return INH_TBA;}
/*INH TETS */
{espacio}+( "tets" | "TETS" ) {lexeme = yytext(); return INH_TETS;}
/*INH TPA */
{espacio}+( "tpa" | "TPA" ) {lexeme = yytext(); return INH_TPA;}
/*INH TSTA */
{espacio}+( "tsta" | "TSTA" ) {lexeme = yytext(); return INH_TSTA;}
/*INH TSTB */
{espacio}+( "tstb" | "TSTB" ) {lexeme = yytext(); return INH_TSTB;}
/*INH TSX */
{espacio}+( "tsx" | "TSX" ) {lexeme = yytext(); return INH_TSX;}
/*INH TSY */
{espacio}+( "tsy" | "TSY" ) {lexeme = yytext(); return INH_TSY;}
/*INH TXS */
{espacio}+( "txs" | "TXS" ) {lexeme = yytext(); return INH_TXS;}
/*INH TYS */
{espacio}+( "tys" | "TYS" ) {lexeme = yytext(); return INH_TYS;}
/*INH WAI */
{espacio}+( "wai" | "WAI" ) {lexeme = yytext(); return INH_WAI;}
/*INH XGDX */
{espacio}+( "xgdx" | "XGDX" ) {lexeme = yytext(); return INH_XGDX;}
/*INH XGDY */
{espacio}+( "xgdy" | "XGDY" ) {lexeme = yytext(); return INH_XGDY;}

/*IMM ADCA */
( "adca"{espacio}+"#$"{H}{2})|("adca"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADCA_HEXA;}
( "adca"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADCA_DEC;}
( "adca"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADCA_CHAR;}
/*IMM ADCB */
( "adcb"{espacio}+"#$"{H}{2}) | ("adcb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADCB_HEXA;}
( "adcb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADCB_DEC;}
( "adcb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADCB_CHAR;}
/*IMM ADDA */ 
( "adda"{espacio}+"#$"{H}{2}) | ("adda"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADDA_HEXA;}
( "adda"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADDA_DEC;}
( "adda"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADDA_CHAR;}
/*IMM ADDB */
( "addb"{espacio}+"#$"{H}{2}) | ("addb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADDB_HEXA;}
( "addb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADDB_DEC;}
( "addb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADDB_CHAR;}
/*IMM ADDD */
( "addd"{espacio}+"#$"{H}{2}) | ("addd"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ADDD_HEXA;}
( "addd"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ADDD_DEC;}
( "addd"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ADDD_CHAR;}
/*IMM ANDA */
( "anda"{espacio}+"#$"{H}{2}) | ("anda"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ANDA_HEXA;}
( "anda"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ANDA_DEC;}
( "anda"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ANDA_CHAR;}
/*IMM ANDB */ 
( "andb"{espacio}+"#$"{H}{2}) | ("andb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ANDB_HEXA;}
( "andb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ANDB_DEC;}
( "andb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ANDB_CHAR;}
/*IMM BITA */ 
( "bita"{espacio}+"#$"{H}{2}) | ("bita"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_BITA_HEXA;}
( "bita"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_BITA_DEC;}
( "bita"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_BITA_CHAR;}
/*IMM BITB */ 
( "bitb"{espacio}+"#$"{H}{2}) | ("bitb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_BITB_HEXA;}
( "bitb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_BITB_DEC;}
( "bitb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_BITB_CHAR;}
/*IMM CMPA */ 
( "cmpa"{espacio}+"#$"{H}{2}) | ("cmpa"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_CMPA_HEXA;}
( "cmpa"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_CMPA_DEC;}
( "cmpa"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_CMPA_CHAR;}
/*IMM CMPB */ 
( "cmpb"{espacio}+"#$"{H}{2}) | ("cmpb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_CMPB_HEXA;}
( "cmpb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_CMPB_DEC;}
( "cmpb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_CMPB_CHAR;}
/*IMM CPD */ 
( "cpd"{espacio}+"#$"{H}{2}) | ("cpd"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_CPD_HEXA;}
( "cpd"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_CPD_DEC;}
( "cpd"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_CPD_CHAR;}
/*IMM CPX */ 
( "cpx"{espacio}+"#$"{H}{2}) | ("cpx"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_CPX_HEXA;}
( "cpx"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_CPX_DEC;}
( "cpx"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_CPX_CHAR;}
/*IMM CPY */ 
( "cpy"{espacio}+"#$"{H}{2}) | ("cpy"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_CPY_HEXA;}
( "cpy"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_CPY_DEC;}
( "cpy"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_CPY_CHAR;}
/*IMM EORA */ 
( "eora"{espacio}+"#$"{H}{2}) | ("eora"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_EORA_HEXA;}
( "eora"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_EORA_DEC;}
( "eora"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_EORA_CHAR;}
/*IMM EORB */ 
( "eorb"{espacio}+"#$"{H}{2}) | ("eorb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_EORB_HEXA;}
( "eorb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_EORB_DEC;}
( "eorb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_EORB_CHAR;}
/*IMM LDAA */ 
( "ldaa"{espacio}+"#$"{H}{2}) | ("ldda"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_LDAA_HEXA;}
( "ldaa"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_LDAA_DEC;}
( "ldaa"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_LDAA_CHAR;}
/*IMM LDAB */ 
( "ldab"{espacio}+"#$"{H}{2}) | ("ldab"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_LDAB_HEXA;}
( "ldab"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_LDAB_DEC;}
( "ldab"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_LDAB_CHAR;}
/*IMM LDD */ 
( "ldd"{espacio}+"#$"{H}{2}) | ("ldd"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_LDD_HEXA;}
( "ldd"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_LDD_DEC;}
( "ldd"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_LDD_CHAR;}
/*IMM LDS */ 
( "lds"{espacio}+"#$"{H}{2}) | ("lds"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_LDS_HEXA;}
( "lds"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_LDS_DEC;}
( "lds"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_LDS_CHAR;}
/*IMM LDX */ 
( "ldx"{espacio}+"#$"{H}{2}) | ("ldx"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_LDX_HEXA;}
( "ldx"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_LDX_DEC;}
( "ldx"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_LDX_CHAR;}
/*IMM LDY */ 
( "ldy"{espacio}+"#$"{H}{2}) | ("ldy"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_LDY_HEXA;}
( "ldy"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_LDY_DEC;}
( "ldy"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_LDY_CHAR;}
/*IMM ORAA */ 
( "oraa"{espacio}+"#$"{H}{2}) | ("oraa"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ORAA_HEXA;}
( "oraa"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ORAA_DEC;}
( "oraa"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ORAA_CHAR;}
/*IMM ORAB */ 
( "orab"{espacio}+"#$"{H}{2}) | ("orab"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_ORAB_HEXA;}
( "orab"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_ORAB_DEC;}
( "orab"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_ORAB_CHAR;}
/*IMM SBCA */ 
( "sbca"{espacio}+"#$"{H}{2}) | ("sbca"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_SBCA_HEXA;}
( "sbca"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_SBCA_DEC;}
( "sbca"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_SBCA_CHAR;}
/*IMM SBCB */ 
( "sbcb"{espacio}+"#$"{H}{2}) | ("sbcb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_SBCB_HEXA;}
( "sbcb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_SBCB_DEC;}
( "sbcb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_SBCB_CHAR;}
/*IMM SUBA */ 
( "suba"{espacio}+"#$"{H}{2}) | ("suba"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_SUBA_HEXA;}
( "suba"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_SUBA_DEC;}
( "suba"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_SUBA_CHAR;}
/*IMM SUBB */ 
( "subb"{espacio}+"#$"{H}{2}) | ("subb"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_SUBB_HEXA;}
( "subb"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_SUBB_DEC;}
( "subb"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_SUBB_CHAR;}
/*IMM SUBD */ 
( "subd"{espacio}+"#$"{H}{2}) | ("subd"{espacio}+"#$"{H}{4}) {lexeme = yytext(); return IMM_SUBD_HEXA;}
( "subd"{espacio}+"#"{D}{2,4}) {lexeme = yytext(); return IMM_SUBD_DEC;}
( "subd"{espacio}+"#'".*{1}) {lexeme = yytext(); return IMM_SUBD_CHAR;}


/*DIR ADCA */
("adca"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ADCA_HEXA;}
("adca"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ADCA_DEC;}
/*DIR ADCB */
("adcb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ADCB_HEXA;}
("adcb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ADCB_DEC;}
/*DIR ADDD */ 
("addd"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ADDD_HEXA;}
("addd"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ADDD_DEC;}
/*DIR ANDA */ 
("anda"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ANDA_HEXA;}
("anda"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ANDA_DEC;}
/*DIR ANDB */ 
("andb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ANDB_HEXA;}
("andb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ANDB_DEC;}
/*DIR BCLR */ 
("bclr"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_BCLR_HEXA;}
("bclr"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_BCLR_DEC;}
/*DIR BITA */ 
("bita"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_BITA_HEXA;}
("bita"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_BITA_DEC;}
/*DIR BITB */ 
("bitb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_BITB_HEXA;}
("bitb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_BITB_DEC;}
/*DIR BRCLR */ 
("brclr"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_BRCLR_HEXA;}
("brclr"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_BRCLR_DEC;}
/*DIR BRSET */ 
("brset"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_BRSET_HEXA;}
("brset"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_BRSET_DEC;}
/*DIR BSET */ 
("bset"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_BSET_HEXA;}
("bset"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_BSET_DEC;}
/*DIR CMPA */ 
("cmpa"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_CMPA_HEXA;}
("cmpa"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_CMPA_DEC;}
/*DIR CMPB */ 
("cmpb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ADCA_HEXA;}
("cmpb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ADCA_DEC;}
/*DIR CPD */ 
("cpd"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_CPD_HEXA;}
("cpd"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_CPD_DEC;}
/*DIR CPX */ 
("cpx"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_CPX_HEXA;}
("cpx"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_CPX_DEC;}
/*DIR CPY */ 
("cpy"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_CPY_HEXA;}
("cpy"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_CPY_DEC;}
/*DIR EORA */ 
("eora"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_EORA_HEXA;}
("eora"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_EORA_DEC;}
/*DIR EORB */ 
("eorb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_EORB_HEXA;}
("eorb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_EORB_DEC;}
/*DIR JSR */ 
("jsr"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_JSR_HEXA;}
("jsr"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_JSR_DEC;}
/*DIR LDAA */ 
("ldaa"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_LDAA_HEXA;}
("ldaa"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_LDAA_DEC;}
/*DIR LDAB */ 
("ldab"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_LDAB_HEXA;}
("ldab"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_LDAB_DEC;}
/*DIR LDD */ 
("ldd"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_LDD_HEXA;}
("ldd"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_LDD_DEC;}
/*DIR LDS */ 
("lds"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_LDS_HEXA;}
("lds"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_LDS_DEC;}
/*DIR LDX */ 
("ldx"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_LDX_HEXA;}
("ldx"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_LDX_DEC;}
/*DIR LDY */ 
("ldy"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_LDY_HEXA;}
("ldy"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_LDY_DEC;}
/*DIR ORAA */ 
("oraa"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ORAA_HEXA;}
("oraa"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ORAA_DEC;}
/*DIR ORAB */ 
("orab"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_ORAB_HEXA;}
("orab"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_ORAB_DEC;}
/*DIR SBCA */ 
("sbca"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_SBCA_HEXA;}
("sbca"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_SBCA_DEC;}
/*DIR SBCB */ 
("sbcb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_SBCB_HEXA;}
("sbcb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_SBCB_DEC;}
/*DIR STAA */ 
("staa"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_STAA_HEXA;}
("staa"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_STAA_DEC;}
/*DIR STAB */ 
("stab"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_STAB_HEXA;}
("stab"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_STAB_DEC;}
/*DIR STD */ 
("std"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_STD_HEXA;}
("std"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_STD_DEC;}
/*DIR STS */ 
("sts"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_STS_HEXA;}
("sts"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_STS_DEC;}
/*DIR STX */ 
("stx"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_STX_HEXA;}
("stx"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_STX_DEC;}
/*DIR STY */ 
("sty"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_STY_HEXA;}
("sty"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_STY_DEC;}
/*DIR SUBA */ 
("suba"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_SUBA_HEXA;}
("suba"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_SUBA_DEC;}
/*DIR SUBB */ 
("subb"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_SUBB_HEXA;}
("subb"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_SUBB_DEC;}
/*DIR SUBD */ 
("subd"{espacio}+"$"{H}{2}) {lexeme = yytext(); return DIR_SUBD_HEXA;}
("subd"{espacio}+{D}{2}) {lexeme = yytext(); return DIR_SUBD_DEC;}

/*INDX ADCA */
{espacio}+"adca"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADCA;}
{espacio}+"adcb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADCB;}
{espacio}+"adda"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADDA;}
{espacio}+"addb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADDB;}
{espacio}+"addd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ADDD;}
{espacio}+"anda"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ANDA;}
{espacio}+"andb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ANDB;}
{espacio}+"asl"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ASL;}
{espacio}+"asr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ASR;}
{espacio}+"bclr"{espacio}+"$"{H}{2}",X,#$"{H}{2} {lexeme=yytext(); return INDX_BCLR;}
{espacio}+"bita"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BITA;}
{espacio}+"bitb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_BITB;}
{espacio}+"brclr"{espacio}+"$"{H}{2}",X,#$"{H}{2}{espacio}+({L}({L}|{D})*) {lexeme=yytext(); return INDX_BRCLR;}
{espacio}+"brset"{espacio}+"$"{H}{2}",X,#$"{H}{2} {lexeme=yytext(); return INDX_BRSET;}
{espacio}+"bset"{espacio}+"$"{H}{2}",X,#$"{H}{2}{espacio}+({L}({L}|{D})*) {lexeme=yytext(); return INDX_BSET;}
{espacio}+"clr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CLR;}
{espacio}+"cmpa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CMPA;}
{espacio}+"cmpb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CMPB;}
{espacio}+"com"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_COM;}
{espacio}+"cpd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CPD;}
{espacio}+"cpx"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CPX;}
{espacio}+"cpy"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_CPY;}
{espacio}+"dec"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_DEC;}
{espacio}+"eora"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_EORA;}
{espacio}+"eorb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_EORB;}
{espacio}+"inc"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_INC;}
{espacio}+"jmp"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_JMP;}
{espacio}+"jsr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_JSR;}
{espacio}+"ldaa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDAA;}
{espacio}+"ldab"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDAB;}
{espacio}+"ldd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDD;}
{espacio}+"lds"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDS;}
{espacio}+"ldx"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDX;}
{espacio}+"ldy"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LDY;}
{espacio}+"lsl"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LSL;}
{espacio}+"lsr"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_LSR;}
{espacio}+"neg"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_NEG;}
{espacio}+"oraa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ORAA;}
{espacio}+"orab"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ORAB;}
{espacio}+"rol"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ROL;}
{espacio}+"ror"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_ROR;}
{espacio}+"sbca"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SBCA;}
{espacio}+"sbcb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SBCB;}
{espacio}+"staa"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STAA;}
{espacio}+"stab"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STAB;}
{espacio}+"std"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STD;}
{espacio}+"sts"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STS;}
{espacio}+"stx"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STX;}
{espacio}+"sty"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_STY;}
{espacio}+"suba"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SUBA;}
{espacio}+"subb"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SUBB;}
{espacio}+"subd"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_SUBD;}
{espacio}+"tst"{espacio}+"$"{H}{2}",X" {lexeme=yytext(); return INDX_TST;}



/*INDY ADCA */
{espacio}+"adca"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADCA;}
{espacio}+"adcb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADCB;}
{espacio}+"adda"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADDA;}
{espacio}+"addb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADDB;}
{espacio}+"addd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ADDD;}
{espacio}+"anda"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ANDA;}
{espacio}+"andb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ANDB;}
{espacio}+"asl"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ASL;}
{espacio}+"asr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ASR;}
{espacio}+"bclr"{espacio}+"$"{H}{2}",Y,#$"{H}{2} {lexeme=yytext(); return INDY_BCLR;}
{espacio}+"bita"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BITA;}
{espacio}+"bitb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_BITB;}
{espacio}+"brclr"{espacio}+"$"{H}{2}",Y,#$"{H}{2}{espacio}+({L}({L}|{D})*) {lexeme=yytext(); return INDY_BRCLR;}
{espacio}+"brset"{espacio}+"$"{H}{2}",Y,#$"{H}{2} {lexeme=yytext(); return INDY_BRSET;}
{espacio}+"bset"{espacio}+"$"{H}{2}",Y,#$"{H}{2}{espacio}+({L}({L}|{D})*) {lexeme=yytext(); return INDY_BSET;}
{espacio}+"clr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CLR;}
{espacio}+"cmpa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CMPA;}
{espacio}+"cmpb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CMPB;}
{espacio}+"com"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_COM;}
{espacio}+"cpd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CPD;}
{espacio}+"cpx"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CPX;}
{espacio}+"cpy"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_CPY;}
{espacio}+"dec"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_DEC;}
{espacio}+"eora"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_EORA;}
{espacio}+"eorb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_EORB;}
{espacio}+"inc"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_INC;}
{espacio}+"jmp"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_JMP;}
{espacio}+"jsr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_JSR;}
{espacio}+"ldaa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDAA;}
{espacio}+"ldab"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDAB;}
{espacio}+"ldd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDD;}
{espacio}+"lds"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDS;}
{espacio}+"ldx"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDX;}
{espacio}+"ldy"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LDY;}
{espacio}+"lsl"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LSL;}
{espacio}+"lsr"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_LSR;}
{espacio}+"neg"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_NEG;}
{espacio}+"oraa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ORAA;}
{espacio}+"orab"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ORAB;}
{espacio}+"rol"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ROL;}
{espacio}+"ror"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_ROR;}
{espacio}+"sbca"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SBCA;}
{espacio}+"sbcb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SBCB;}
{espacio}+"staa"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STAA;}
{espacio}+"stab"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STAB;}
{espacio}+"std"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STD;}
{espacio}+"sts"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STS;}
{espacio}+"stx"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STX;}
{espacio}+"sty"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_STY;}
{espacio}+"suba"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SUBA;}
{espacio}+"subb"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SUBB;}
{espacio}+"subd"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_SUBD;}
{espacio}+"tst"{espacio}+"$"{H}{2}",Y" {lexeme=yytext(); return INDY_TST;}

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

