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
%caseless
L=[a-zA-Z_]
D =[0-9]
H =[0-9A-F]
espacio=[ ,\t,\r,\n]
%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}
%%
{espacio}+"ORG"{espacio}+"$"{H}{4} {return new Symbol(sym.ORG, yychar, yyline, yytext());}
({L}({L}|{D})*){espacio}+"EQU"{espacio}+"$"{H}{4} {return new Symbol(sym.EQU, yychar, yyline, yytext());}
FCB {return new Symbol(sym.FCB, yychar, yyline, yytext());}
END {return new Symbol(sym.END, yychar, yyline, yytext());}

/*INH ABA */
{espacio}+( "aba" | "ABA" ) {return new Symbol(sym.INH_ABA, yychar, yyline, yytext());}
/*INH ABX */
{espacio}+( "abx" | "ABX" ) {return new Symbol(sym.INH_ABX, yychar, yyline, yytext());}
/*INH ABY */
{espacio}+( "aby" | "ABY" ) {return new Symbol(sym.INH_ABY, yychar, yyline, yytext());}
/*INH ASLA */
{espacio}+( "asla" | "ASLA" ) {return new Symbol(sym.INH_ASLA, yychar, yyline, yytext());}
/*INH ASLB */
{espacio}+( "aslb" | "ASLB" ) {return new Symbol(sym.INH_ASLB, yychar, yyline, yytext());}
/*INH ASLD */
{espacio}+( "asld" | "ASLD" ) {return new Symbol(sym.INH_ASLD, yychar, yyline, yytext());}
/*INH ASRA */
{espacio}+( "asra" | "ASRA" ) {return new Symbol(sym.INH_ASRA, yychar, yyline, yytext());}
/*INH ASRB */
{espacio}+( "asrb" | "ASRB" ) {return new Symbol(sym.INH_ASRB, yychar, yyline, yytext());}
/*INH CBA */
{espacio}+( "cba" | "CBA" ) {return new Symbol(sym.INH_CBA, yychar, yyline, yytext());}
/*INH CLC */
{espacio}+( "clc" | "CLC" ) {return new Symbol(sym.INH_CLC, yychar, yyline, yytext());}
/*INH CLI */
{espacio}+( "cli" | "CLI" ) {return new Symbol(sym.INH_CLI, yychar, yyline, yytext());}
/*INH CLRA */
{espacio}+( "clra" | "CLRA" ) {return new Symbol(sym.INH_CLRA, yychar, yyline, yytext());}
/*INH CLRB */
{espacio}+( "clrb" | "CLRB" ) {return new Symbol(sym.INH_CLRB, yychar, yyline, yytext());}
/*INH CLV */
{espacio}+( "clv" | "CLV" ) {return new Symbol(sym.INH_CLV, yychar, yyline, yytext());}
/*INH COMA */
{espacio}+( "coma" | "COMA" ) {return new Symbol(sym.INH_COMA, yychar, yyline, yytext());}
/*INH COMB */
{espacio}+( "comb" | "COMB" ) {return new Symbol(sym.INH_COMB, yychar, yyline, yytext());}
/*INH DAA */
{espacio}+( "daa" | "DAA" ) {return new Symbol(sym.INH_DAA, yychar, yyline, yytext());}
/*INH DECA */
{espacio}+( "deca" | "DECA" ) {return new Symbol(sym.INH_DECA, yychar, yyline, yytext());}
/*INH DECB */
{espacio}+( "decb" | "DECB" ) {return new Symbol(sym.INH_DECB, yychar, yyline, yytext());}
/*INH DES */
{espacio}+( "des" | "DES" ) {return new Symbol(sym.INH_DES, yychar, yyline, yytext());}
/*INH DEX */
{espacio}+( "dex" | "DEX" ) {return new Symbol(sym.INH_DEX, yychar, yyline, yytext());}
/*INH DEY */
{espacio}+( "dey" | "DEY" ) {return new Symbol(sym.INH_DEY, yychar, yyline, yytext());}
/*INH FDIV */
{espacio}+( "fdiv" | "FDIV" ) {return new Symbol(sym.INH_FDIV, yychar, yyline, yytext());}
/*INH IDIV */
{espacio}+( "idiv" | "IDIV" ) {return new Symbol(sym.INH_IDIV, yychar, yyline, yytext());}
/*INH INCA */
{espacio}+( "inca" | "INCA" ) {return new Symbol(sym.INH_INCA, yychar, yyline, yytext());}
/*INH INCB */
{espacio}+( "incb" | "INCB" ) {return new Symbol(sym.INH_INCB, yychar, yyline, yytext());}
/*INH INS */
{espacio}+( "ins" | "INS" ) {return new Symbol(sym.INH_INS, yychar, yyline, yytext());}
/*INH INX */
{espacio}+( "inx" | "INX" ) {return new Symbol(sym.INH_INX, yychar, yyline, yytext());}
/*INH INY */
{espacio}+( "iny" | "INY" ) {return new Symbol(sym.INH_INY, yychar, yyline, yytext());}
/*INH LSLA */
{espacio}+( "lsla" | "LSLA" ) {return new Symbol(sym.INH_LSLA, yychar, yyline, yytext());}
/*INH LSLB */
{espacio}+( "lslb" | "LSLB" ) {return new Symbol(sym.INH_LSLB, yychar, yyline, yytext());}
/*INH LSLD */
{espacio}+( "lsld" | "LSLD" ) {return new Symbol(sym.INH_LSLD, yychar, yyline, yytext());}
/*INH LSRA */
{espacio}+( "lsra" | "LSRA" ) {return new Symbol(sym.INH_LSRA, yychar, yyline, yytext());}
/*INH LSRB */
{espacio}+( "lsrb" | "LSRB" ) {return new Symbol(sym.INH_LSRB, yychar, yyline, yytext());}
/*INH LSRD */
{espacio}+( "lsrd" | "LSRD" ) {return new Symbol(sym.INH_LSRD, yychar, yyline, yytext());}
/*INH MUL */
{espacio}+( "mul" | "MUL" ) {return new Symbol(sym.INH_MUL, yychar, yyline, yytext());}
/*INH NEGA */
{espacio}+( "nega" | "NEGA" ) {return new Symbol(sym.INH_NEGA, yychar, yyline, yytext());}
/*INH NEGB */
{espacio}+( "negb" | "NEGB" ) {return new Symbol(sym.INH_NEGB, yychar, yyline, yytext());}
/*INH NOP */
{espacio}+( "nop" | "NOP" ) {return new Symbol(sym.INH_NOP, yychar, yyline, yytext());}
/*INH PSHA */
{espacio}+( "psha" | "PSHA" ) {return new Symbol(sym.INH_PSHA, yychar, yyline, yytext());}
/*INH PSHB */
{espacio}+( "pshb" | "PSHB" ) {return new Symbol(sym.INH_PSHB, yychar, yyline, yytext());}
/*INH PSHX */
{espacio}+( "PSHX" | "PSHX" ) {return new Symbol(sym.INH_PSHX, yychar, yyline, yytext());}
/*INH PSHY */
{espacio}+( "pshy" | "PSHY" ) {return new Symbol(sym.INH_PSHY, yychar, yyline, yytext());}
/*INH PULA */
{espacio}+( "pula" | "PULA" ) {return new Symbol(sym.INH_PULA, yychar, yyline, yytext());}
/*INH PULB */
{espacio}+( "pulb" | "PULB" ) {return new Symbol(sym.INH_PULB, yychar, yyline, yytext());}
/*INH PULX */
{espacio}+( "pulx" | "PULX" ) {return new Symbol(sym.INH_PULX, yychar, yyline, yytext());}
/*INH PULY */
{espacio}+( "puly" | "PULY" ) {return new Symbol(sym.INH_PULY, yychar, yyline, yytext());}
/*INH ROLA */
{espacio}+( "rola" | "ROLA" ) {return new Symbol(sym.INH_ROLA, yychar, yyline, yytext());}
/*INH ROLB */
{espacio}+( "rolb" | "ROLB" ) {return new Symbol(sym.INH_ROLB, yychar, yyline, yytext());}
/*INH RORA */
{espacio}+( "rora" | "RORA" ) {return new Symbol(sym.INH_RORA, yychar, yyline, yytext());}
/*INH RORB */
{espacio}+( "rorb" | "RORB" ) {return new Symbol(sym.INH_RORB, yychar, yyline, yytext());}
/*INH RTI */
{espacio}+( "rti" | "RTI" ) {return new Symbol(sym.INH_RTI, yychar, yyline, yytext());}
/*INH RTS */
{espacio}+( "rts" | "RTS" ) {return new Symbol(sym.INH_RTS, yychar, yyline, yytext());}
/*INH SBA */
{espacio}+( "sba" | "SBA" ) {return new Symbol(sym.INH_SBA, yychar, yyline, yytext());}
/*INH SEC */
{espacio}+( "sec" | "SEC" ) {return new Symbol(sym.INH_SEC, yychar, yyline, yytext());}
/*INH SEI */
{espacio}+( "sei" | "SEI" ) {return new Symbol(sym.INH_SEI, yychar, yyline, yytext());}
/*INH SEV */
{espacio}+( "sev" | "SEV" ) {return new Symbol(sym.INH_SEV, yychar, yyline, yytext());}
/*INH STOP */
{espacio}+( "sev" | "STOP" ) {return new Symbol(sym.INH_STOP, yychar, yyline, yytext());}
/*INH SWI */
{espacio}+( "swi" | "SWI" ) {return new Symbol(sym.INH_SWI, yychar, yyline, yytext());}
/*INH TAB */
{espacio}+( "tab" | "TAB" ) {return new Symbol(sym.INH_TAB, yychar, yyline, yytext());}
/*INH TAP */
{espacio}+( "tap" | "TAP" ) {return new Symbol(sym.INH_TAP, yychar, yyline, yytext());}
/*INH TBA */
{espacio}+( "tba" | "TBA" ) {return new Symbol(sym.INH_TBA, yychar, yyline, yytext());}
/*INH TETS */
{espacio}+( "tets" | "TETS" ) {return new Symbol(sym.INH_TETS, yychar, yyline, yytext());}
/*INH TPA */
{espacio}+( "tpa" | "TPA" ) {return new Symbol(sym.INH_TPA, yychar, yyline, yytext());}
/*INH TSTA */
{espacio}+( "tsta" | "TSTA" ) {return new Symbol(sym.INH_TSTA, yychar, yyline, yytext());}
/*INH TSTB */
{espacio}+( "tstb" | "TSTB" ) {return new Symbol(sym.INH_TSTB, yychar, yyline, yytext());}
/*INH TSX */
{espacio}+( "tsx" | "TSX" ) {return new Symbol(sym.INH_TSX, yychar, yyline, yytext());}
/*INH TSY */
{espacio}+( "tsy" | "TSY" ) {return new Symbol(sym.INH_TSY, yychar, yyline, yytext());}
/*INH TXS */
{espacio}+( "txs" | "TXS" ) {return new Symbol(sym.INH_TXS, yychar, yyline, yytext());}
/*INH TYS */
{espacio}+( "tys" | "TYS" ) {return new Symbol(sym.INH_TYS, yychar, yyline, yytext());}
/*INH WAI */
{espacio}+( "wai" | "WAI" ) {return new Symbol(sym.INH_WAI, yychar, yyline, yytext());}
/*INH XGDX */
{espacio}+( "xgdx" | "XGDX" ) {return new Symbol(sym.INH_XGDX, yychar, yyline, yytext());}
/*INH XGDY */
{espacio}+( "xgdy" | "XGDY" ) {return new Symbol(sym.INH_XGDY, yychar, yyline, yytext());}

/*IMM ADCA */
( "adca"{espacio}+"#$"{H}{2})|("adca"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ADCA_HEXA, yychar, yyline, yytext());}
( "adca"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ADCA_DEC, yychar, yyline, yytext());}
( "adca"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ADCA_CHAR, yychar, yyline, yytext());}
/*IMM ADCB */
( "adcb"{espacio}+"#$"{H}{2}) | ("adcb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ADCB_HEXA, yychar, yyline, yytext());}
( "adcb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ADCB_DEC, yychar, yyline, yytext());}
( "adcb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ADCB_CHAR, yychar, yyline, yytext());}
/*IMM ADDA */ 
( "adda"{espacio}+"#$"{H}{2}) | ("adda"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ADDA_HEXA, yychar, yyline, yytext());}
( "adda"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ADDA_DEC, yychar, yyline, yytext());}
( "adda"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ADDA_CHAR, yychar, yyline, yytext());}
/*IMM ADDB */
( "addb"{espacio}+"#$"{H}{2}) | ("addb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ADDB_HEXA, yychar, yyline, yytext());}
( "addb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ADDB_DEC, yychar, yyline, yytext());}
( "addb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ADDB_CHAR, yychar, yyline, yytext());}
/*IMM ADDD */
( "addd"{espacio}+"#$"{H}{2}) | ("addd"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ADDD_HEXA, yychar, yyline, yytext());}
( "addd"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ADDD_DEC, yychar, yyline, yytext());}
( "addd"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ADDD_CHAR, yychar, yyline, yytext());}
/*IMM ANDA */
( "anda"{espacio}+"#$"{H}{2}) | ("anda"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ANDA_HEXA, yychar, yyline, yytext());}
( "anda"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ANDA_DEC, yychar, yyline, yytext());}
( "anda"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ANDA_CHAR, yychar, yyline, yytext());}
/*IMM ANDB */ 
( "andb"{espacio}+"#$"{H}{2}) | ("andb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ANDB_HEXA, yychar, yyline, yytext());}
( "andb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ANDB_DEC, yychar, yyline, yytext());}
( "andb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ANDB_CHAR, yychar, yyline, yytext());}
/*IMM BITA */ 
( "bita"{espacio}+"#$"{H}{2}) | ("bita"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_BITA_HEXA, yychar, yyline, yytext());}
( "bita"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_BITA_DEC, yychar, yyline, yytext());}
( "bita"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_BITA_CHAR, yychar, yyline, yytext());}
/*IMM BITB */ 
( "bitb"{espacio}+"#$"{H}{2}) | ("bitb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_BITB_HEXA, yychar, yyline, yytext());}
( "bitb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_BITB_DEC, yychar, yyline, yytext());}
( "bitb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_BITB_CHAR, yychar, yyline, yytext());}
/*IMM CMPA */ 
( "cmpa"{espacio}+"#$"{H}{2}) | ("cmpa"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_CMPA_HEXA, yychar, yyline, yytext());}
( "cmpa"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_CMPA_DEC, yychar, yyline, yytext());}
( "cmpa"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_CMPA_CHAR, yychar, yyline, yytext());}
/*IMM CMPB */ 
( "cmpb"{espacio}+"#$"{H}{2}) | ("cmpb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_CMPB_HEXA, yychar, yyline, yytext());}
( "cmpb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_CMPB_DEC, yychar, yyline, yytext());}
( "cmpb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_CMPB_CHAR, yychar, yyline, yytext());}
/*IMM CPD */ 
( "cpd"{espacio}+"#$"{H}{2}) | ("cpd"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_CPD_HEXA, yychar, yyline, yytext());}
( "cpd"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_CPD_DEC, yychar, yyline, yytext());}
( "cpd"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_CPD_CHAR, yychar, yyline, yytext());}
/*IMM CPX */ 
( "cpx"{espacio}+"#$"{H}{2}) | ("cpx"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_CPX_HEXA, yychar, yyline, yytext());}
( "cpx"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_CPX_DEC, yychar, yyline, yytext());}
( "cpx"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_CPX_CHAR, yychar, yyline, yytext());}
/*IMM CPY */ 
( "cpy"{espacio}+"#$"{H}{2}) | ("cpy"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_CPY_HEXA, yychar, yyline, yytext());}
( "cpy"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_CPY_DEC, yychar, yyline, yytext());}
( "cpy"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_CPY_CHAR, yychar, yyline, yytext());}
/*IMM EORA */ 
( "eora"{espacio}+"#$"{H}{2}) | ("eora"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_EORA_HEXA, yychar, yyline, yytext());}
( "eora"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_EORA_DEC, yychar, yyline, yytext());}
( "eora"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_EORA_CHAR, yychar, yyline, yytext());}
/*IMM EORB */ 
( "eorb"{espacio}+"#$"{H}{2}) | ("eorb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_EORB_HEXA, yychar, yyline, yytext());}
( "eorb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_EORB_DEC, yychar, yyline, yytext());}
( "eorb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_EORB_CHAR, yychar, yyline, yytext());}
/*IMM LDAA */ 
( "ldaa"{espacio}+"#$"{H}{2}) | ("ldaa"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_LDAA_HEXA, yychar, yyline, yytext());}
( "ldaa"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_LDAA_DEC, yychar, yyline, yytext());}
( "ldaa"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_LDAA_CHAR, yychar, yyline, yytext());}
/*IMM LDAB */ 
( "ldab"{espacio}+"#$"{H}{2}) | ("ldab"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_LDAB_HEXA, yychar, yyline, yytext());}
( "ldab"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_LDAB_DEC, yychar, yyline, yytext());}
( "ldab"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_LDAB_CHAR, yychar, yyline, yytext());}
/*IMM LDD */ 
( "ldd"{espacio}+"#$"{H}{2}) | ("ldd"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_LDD_HEXA, yychar, yyline, yytext());}
( "ldd"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_LDD_DEC, yychar, yyline, yytext());}
( "ldd"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_LDD_CHAR, yychar, yyline, yytext());}
/*IMM LDS */ 
( "lds"{espacio}+"#$"{H}{2}) | ("lds"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_LDS_HEXA, yychar, yyline, yytext());}
( "lds"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_LDS_DEC, yychar, yyline, yytext());}
( "lds"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_LDS_CHAR, yychar, yyline, yytext());}
/*IMM LDX */ 
( "ldx"{espacio}+"#$"{H}{2}) | ("ldx"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_LDX_HEXA, yychar, yyline, yytext());}
( "ldx"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_LDX_DEC, yychar, yyline, yytext());}
( "ldx"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_LDX_CHAR, yychar, yyline, yytext());}
/*IMM LDY */ 
( "ldy"{espacio}+"#$"{H}{2}) | ("ldy"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_LDY_HEXA, yychar, yyline, yytext());}
( "ldy"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_LDY_DEC, yychar, yyline, yytext());}
( "ldy"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_LDY_CHAR, yychar, yyline, yytext());}
/*IMM ORAA */ 
( "oraa"{espacio}+"#$"{H}{2}) | ("oraa"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ORAA_HEXA, yychar, yyline, yytext());}
( "oraa"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ORAA_DEC, yychar, yyline, yytext());}
( "oraa"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ORAA_CHAR, yychar, yyline, yytext());}
/*IMM ORAB */ 
( "orab"{espacio}+"#$"{H}{2}) | ("orab"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_ORAB_HEXA, yychar, yyline, yytext());}
( "orab"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_ORAB_DEC, yychar, yyline, yytext());}
( "orab"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_ORAB_CHAR, yychar, yyline, yytext());}
/*IMM SBCA */ 
( "sbca"{espacio}+"#$"{H}{2}) | ("sbca"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_SBCA_HEXA, yychar, yyline, yytext());}
( "sbca"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_SBCA_DEC, yychar, yyline, yytext());}
( "sbca"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_SBCA_CHAR, yychar, yyline, yytext());}
/*IMM SBCB */ 
( "sbcb"{espacio}+"#$"{H}{2}) | ("sbcb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_SBCB_HEXA, yychar, yyline, yytext());}
( "sbcb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_SBCB_DEC, yychar, yyline, yytext());}
( "sbcb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_SBCB_CHAR, yychar, yyline, yytext());}
/*IMM SUBA */ 
( "suba"{espacio}+"#$"{H}{2}) | ("suba"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_SUBA_HEXA, yychar, yyline, yytext());}
( "suba"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_SUBA_DEC, yychar, yyline, yytext());}
( "suba"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_SUBA_CHAR, yychar, yyline, yytext());}
/*IMM SUBB */ 
( "subb"{espacio}+"#$"{H}{2}) | ("subb"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_SUBB_HEXA, yychar, yyline, yytext());}
( "subb"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_SUBB_DEC, yychar, yyline, yytext());}
( "subb"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_SUBB_CHAR, yychar, yyline, yytext());}
/*IMM SUBD */ 
( "subd"{espacio}+"#$"{H}{2}) | ("subd"{espacio}+"#$"{H}{4}) {return new Symbol(sym.IMM_SUBD_HEXA, yychar, yyline, yytext());}
( "subd"{espacio}+"#"{D}{2,4}) {return new Symbol(sym.IMM_SUBD_DEC, yychar, yyline, yytext());}
( "subd"{espacio}+"#'".*{1}) {return new Symbol(sym.IMM_SUBD_CHAR, yychar, yyline, yytext());}

/*DIR ADCA */
("adca"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ADCA_HEXA, yychar, yyline, yytext());}
("adca"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ADCA_DEC, yychar, yyline, yytext());}
/*DIR ADCB */
("adcb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ADCB_HEXA, yychar, yyline, yytext());}
("adcb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ADCB_DEC, yychar, yyline, yytext());}
/*DIR ADDA */ 
("adda"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ADDA_HEXA, yychar, yyline, yytext());}
("adda"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ADDA_DEC, yychar, yyline, yytext());}
/*DIR ADDB */
("addb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ADDB_HEXA, yychar, yyline, yytext());}
("addb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ADDB_DEC, yychar, yyline, yytext());}
/*DIR ADDD */
("addd"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ADDD_HEXA, yychar, yyline, yytext());}
("addd"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ADDD_DEC, yychar, yyline, yytext());}
/*DIR ANDA */
("anda"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ANDA_HEXA, yychar, yyline, yytext());}
("anda"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ANDA_DEC, yychar, yyline, yytext());}
/*DIR ANDB */ 
("andb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ANDB_HEXA, yychar, yyline, yytext());}
("andb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ANDB_DEC, yychar, yyline, yytext());}
/*DIR BCLR */ 
("bclr"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_BCLR_HEXA, yychar, yyline, yytext());}
("bclr"{espacio}+{D}{2}) {return new Symbol(sym.DIR_BCLR_DEC, yychar, yyline, yytext());}
/*DIR BITA */ 
("bita"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_BITA_HEXA, yychar, yyline, yytext());}
("bita"{espacio}+{D}{2}) {return new Symbol(sym.DIR_BITA_DEC, yychar, yyline, yytext());}
/*DIR BITB */ 
("bitb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_BITB_HEXA, yychar, yyline, yytext());}
("bitb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_BITB_DEC, yychar, yyline, yytext());}
/*DIR BRCLR */ 
("brclr"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_BRCLR_HEXA, yychar, yyline, yytext());}
("brclr"{espacio}+{D}{2}) {return new Symbol(sym.DIR_BRCLR_DEC, yychar, yyline, yytext());}
/*DIR BRSET */ 
("brset"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_BRSET_HEXA, yychar, yyline, yytext());}
("brset"{espacio}+{D}{2}) {return new Symbol(sym.DIR_BRSET_DEC, yychar, yyline, yytext());}
/*DIR BSET */ 
("bset"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_BSET_HEXA, yychar, yyline, yytext());}
("bset"{espacio}+{D}{2}) {return new Symbol(sym.DIR_BSET_DEC, yychar, yyline, yytext());}
/*DIR CMPA */ 
("cmpa"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_CMPA_HEXA, yychar, yyline, yytext());}
("cmpa"{espacio}+{D}{2}) {return new Symbol(sym.DIR_CMPA_DEC, yychar, yyline, yytext());}
/*DIR CMPB */ 
("cmpb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_CMPB_HEXA, yychar, yyline, yytext());}
("cmpb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_CMPB_DEC, yychar, yyline, yytext());}
/*DIR CPD */ 
("cpd"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_CPD_HEXA, yychar, yyline, yytext());}
("cpd"{espacio}+{D}{2}) {return new Symbol(sym.DIR_CPD_DEC, yychar, yyline, yytext());}
/*DIR CPX */ 
("cpx"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_CPX_HEXA, yychar, yyline, yytext());}
("cpx"{espacio}+{D}{2}) {return new Symbol(sym.DIR_CPX_DEC, yychar, yyline, yytext());}
/*DIR CPY */ 
("cpy"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_CPY_HEXA, yychar, yyline, yytext());}
("cpy"{espacio}+{D}{2}) {return new Symbol(sym.DIR_CPY_DEC, yychar, yyline, yytext());}
/*DIR EORA */ 
("eora"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_EORA_HEXA, yychar, yyline, yytext());}
("eora"{espacio}+{D}{2}) {return new Symbol(sym.DIR_EORA_DEC, yychar, yyline, yytext());}
/*DIR EORB */ 
("eorb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_EORB_HEXA, yychar, yyline, yytext());}
("eorb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_EORB_DEC, yychar, yyline, yytext());}
/*DIR JSR */ 
("jsr"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_JSR_HEXA, yychar, yyline, yytext());}
("jsr"{espacio}+{D}{2}) {return new Symbol(sym.DIR_JSR_DEC, yychar, yyline, yytext());}
/*DIR LDAA */ 
("ldaa"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_LDAA_HEXA, yychar, yyline, yytext());}
("ldaa"{espacio}+{D}{2}) {return new Symbol(sym.DIR_LDAA_DEC, yychar, yyline, yytext());}
/*DIR LDAB */ 
("ldab"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_LDAB_HEXA, yychar, yyline, yytext());}
("ldab"{espacio}+{D}{2}) {return new Symbol(sym.DIR_LDAB_DEC, yychar, yyline, yytext());}
/*DIR LDD */ 
("ldd"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_LDD_HEXA, yychar, yyline, yytext());}
("ldd"{espacio}+{D}{2}) {return new Symbol(sym.DIR_LDD_DEC, yychar, yyline, yytext());}
/*DIR LDS */ 
("lds"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_LDS_HEXA, yychar, yyline, yytext());}
("lds"{espacio}+{D}{2}) {return new Symbol(sym.DIR_LDS_DEC, yychar, yyline, yytext());}
/*DIR LDX */ 
("ldx"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_LDX_HEXA, yychar, yyline, yytext());}
("ldx"{espacio}+{D}{2}) {return new Symbol(sym.DIR_LDX_DEC, yychar, yyline, yytext());}
/*DIR LDY */ 
("ldy"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_LDY_HEXA, yychar, yyline, yytext());}
("ldy"{espacio}+{D}{2}) {return new Symbol(sym.DIR_LDY_DEC, yychar, yyline, yytext());}
/*DIR ORAA */ 
("oraa"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ORAA_HEXA, yychar, yyline, yytext());}
("oraa"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ORAA_DEC, yychar, yyline, yytext());}
/*DIR ORAB */ 
("orab"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_ORAB_HEXA, yychar, yyline, yytext());}
("orab"{espacio}+{D}{2}) {return new Symbol(sym.DIR_ORAB_DEC, yychar, yyline, yytext());}
/*DIR SBCA */ 
("sbca"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_SBCA_HEXA, yychar, yyline, yytext());}
("sbca"{espacio}+{D}{2}) {return new Symbol(sym.DIR_SBCA_DEC, yychar, yyline, yytext());}
/*DIR SBCB */ 
("sbcb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_SBCB_HEXA, yychar, yyline, yytext());}
("sbcb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_SBCB_DEC, yychar, yyline, yytext());}
/*DIR STAA */ 
("staa"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_STAA_HEXA, yychar, yyline, yytext());}
("staa"{espacio}+{D}{2}) {return new Symbol(sym.DIR_STAA_DEC, yychar, yyline, yytext());}
/*DIR STAB */ 
("stab"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_STAB_HEXA, yychar, yyline, yytext());}
("stab"{espacio}+{D}{2}) {return new Symbol(sym.DIR_STAB_DEC, yychar, yyline, yytext());}
/*DIR STD */ 
("std"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_STD_HEXA, yychar, yyline, yytext());}
("std"{espacio}+{D}{2}) {return new Symbol(sym.DIR_STD_DEC, yychar, yyline, yytext());}
/*DIR STS */ 
("sts"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_STS_HEXA, yychar, yyline, yytext());}
("sts"{espacio}+{D}{2}) {return new Symbol(sym.DIR_STS_DEC, yychar, yyline, yytext());}
/*DIR STX */ 
("stx"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_STX_HEXA, yychar, yyline, yytext());}
("stx"{espacio}+{D}{2}) {return new Symbol(sym.DIR_STX_DEC, yychar, yyline, yytext());}
/*DIR STY */ 
("sty"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_STY_HEXA, yychar, yyline, yytext());}
("sty"{espacio}+{D}{2}) {return new Symbol(sym.DIR_STY_DEC, yychar, yyline, yytext());}
/*DIR SUBA */ 
("suba"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_SUBA_HEXA, yychar, yyline, yytext());}
("suba"{espacio}+{D}{2}) {return new Symbol(sym.DIR_SUBA_DEC, yychar, yyline, yytext());}
/*DIR SUBB */ 
("subb"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_SUBB_HEXA, yychar, yyline, yytext());}
("subb"{espacio}+{D}{2}) {return new Symbol(sym.DIR_SUBB_DEC, yychar, yyline, yytext());}
/*DIR SUBD */ 
("subd"{espacio}+"$"{H}{2}) {return new Symbol(sym.DIR_SUBD_HEXA, yychar, yyline, yytext());}
("subd"{espacio}+{D}{2}) {return new Symbol(sym.DIR_SUBD_DEC, yychar, yyline, yytext());}

/*INDX ADCA */
{espacio}+"adca"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ADCA, yychar, yyline, yytext());}
{espacio}+"adcb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ADCB, yychar, yyline, yytext());}
{espacio}+"adda"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ADDA, yychar, yyline, yytext());}
{espacio}+"addb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ADDB, yychar, yyline, yytext());}
{espacio}+"addd"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ADDD, yychar, yyline, yytext());}
{espacio}+"anda"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ANDA, yychar, yyline, yytext());}
{espacio}+"andb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ANDB, yychar, yyline, yytext());}
{espacio}+"asl"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ASL, yychar, yyline, yytext());}
{espacio}+"asr"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ASR, yychar, yyline, yytext());}
{espacio}+"bclr"{espacio}+"$"{H}{2}",X,#$"{H}{2} {return new Symbol(sym.INDX_BCLR, yychar, yyline, yytext());}
{espacio}+"bita"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_BITA, yychar, yyline, yytext());}
{espacio}+"bitb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_BITB, yychar, yyline, yytext());}
{espacio}+"brclr"{espacio}+"$"{H}{2}",X,#$"{H}{2}{espacio}+({L}({L}|{D})*) {return new Symbol(sym.INDX_BRCLR, yychar, yyline, yytext());}
{espacio}+"brset"{espacio}+"$"{H}{2}",X,#$"{H}{2} {return new Symbol(sym.INDX_BRSET, yychar, yyline, yytext());}
{espacio}+"bset"{espacio}+"$"{H}{2}",X,#$"{H}{2}{espacio}+({L}({L}|{D})*) {return new Symbol(sym.INDX_BSET, yychar, yyline, yytext());}
{espacio}+"clr"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_CLR, yychar, yyline, yytext());}
{espacio}+"cmpa"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_CMPA, yychar, yyline, yytext());}
{espacio}+"cmpb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_CMPB, yychar, yyline, yytext());}
{espacio}+"com"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_COM, yychar, yyline, yytext());}
{espacio}+"cpd"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_CPD, yychar, yyline, yytext());}
{espacio}+"cpx"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_CPX, yychar, yyline, yytext());}
{espacio}+"cpy"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_CPY, yychar, yyline, yytext());}
{espacio}+"dec"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_DEC, yychar, yyline, yytext());}
{espacio}+"eora"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_EORA, yychar, yyline, yytext());}
{espacio}+"eorb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_EORB, yychar, yyline, yytext());}
{espacio}+"inc"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_INC, yychar, yyline, yytext());}
{espacio}+"jmp"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_JMP, yychar, yyline, yytext());}
{espacio}+"jsr"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_JSR, yychar, yyline, yytext());}
{espacio}+"ldaa"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LDAA, yychar, yyline, yytext());}
{espacio}+"ldab"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LDAB, yychar, yyline, yytext());}
{espacio}+"ldd"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LDD, yychar, yyline, yytext());}
{espacio}+"lds"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LDS, yychar, yyline, yytext());}
{espacio}+"ldx"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LDX, yychar, yyline, yytext());}
{espacio}+"ldy"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LDY, yychar, yyline, yytext());}
{espacio}+"lsl"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LSL, yychar, yyline, yytext());}
{espacio}+"lsr"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_LSR, yychar, yyline, yytext());}
{espacio}+"neg"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_NEG, yychar, yyline, yytext());}
{espacio}+"oraa"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ORAA, yychar, yyline, yytext());}
{espacio}+"orab"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ORAB, yychar, yyline, yytext());}
{espacio}+"rol"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ROL, yychar, yyline, yytext());}
{espacio}+"ror"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_ROR, yychar, yyline, yytext());}
{espacio}+"sbca"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_SBCA, yychar, yyline, yytext());}
{espacio}+"sbcb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_SBCB, yychar, yyline, yytext());}
{espacio}+"staa"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_STAA, yychar, yyline, yytext());}
{espacio}+"stab"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_STAB, yychar, yyline, yytext());}
{espacio}+"std"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_STD, yychar, yyline, yytext());}
{espacio}+"sts"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_STS, yychar, yyline, yytext());}
{espacio}+"stx"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_STX, yychar, yyline, yytext());}
{espacio}+"sty"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_STY, yychar, yyline, yytext());}
{espacio}+"suba"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_SUBA, yychar, yyline, yytext());}
{espacio}+"subb"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_SUBB, yychar, yyline, yytext());}
{espacio}+"subd"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_SUBD, yychar, yyline, yytext());}
{espacio}+"tst"{espacio}+"$"{H}{2}",X" {return new Symbol(sym.INDX_TST, yychar, yyline, yytext());}



/*INDY ADCA */
{espacio}+"adca"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ADCA, yychar, yyline, yytext());}
{espacio}+"adcb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ADCB, yychar, yyline, yytext());}
{espacio}+"adda"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ADDA, yychar, yyline, yytext());}
{espacio}+"addb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ADDB, yychar, yyline, yytext());}
{espacio}+"addd"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ADDD, yychar, yyline, yytext());}
{espacio}+"anda"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ANDA, yychar, yyline, yytext());}
{espacio}+"andb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ANDB, yychar, yyline, yytext());}
{espacio}+"asl"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ASL, yychar, yyline, yytext());}
{espacio}+"asr"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ASR, yychar, yyline, yytext());}
{espacio}+"bclr"{espacio}+"$"{H}{2}",Y,#$"{H}{2} {return new Symbol(sym.INDY_BCLR, yychar, yyline, yytext());}
{espacio}+"bita"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_BITA, yychar, yyline, yytext());}
{espacio}+"bitb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_BITB, yychar, yyline, yytext());}
{espacio}+"brclr"{espacio}+"$"{H}{2}",Y,#$"{H}{2}{espacio}+({L}({L}|{D})*) {return new Symbol(sym.INDY_BRCLR, yychar, yyline, yytext());}
{espacio}+"brset"{espacio}+"$"{H}{2}",Y,#$"{H}{2} {return new Symbol(sym.INDY_BRSET, yychar, yyline, yytext());}
{espacio}+"bset"{espacio}+"$"{H}{2}",Y,#$"{H}{2}{espacio}+({L}({L}|{D})*) {return new Symbol(sym.INDY_BSET, yychar, yyline, yytext());}
{espacio}+"clr"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_CLR, yychar, yyline, yytext());}
{espacio}+"cmpa"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_CMPA, yychar, yyline, yytext());}
{espacio}+"cmpb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_CMPB, yychar, yyline, yytext());}
{espacio}+"com"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_COM, yychar, yyline, yytext());}
{espacio}+"cpd"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_CPD, yychar, yyline, yytext());}
{espacio}+"cpx"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_CPX, yychar, yyline, yytext());}
{espacio}+"cpy"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_CPY, yychar, yyline, yytext());}
{espacio}+"dec"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_DEC, yychar, yyline, yytext());}
{espacio}+"eora"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_EORA, yychar, yyline, yytext());}
{espacio}+"eorb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_EORB, yychar, yyline, yytext());}
{espacio}+"inc"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_INC, yychar, yyline, yytext());}
{espacio}+"jmp"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_JMP, yychar, yyline, yytext());}
{espacio}+"jsr"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_JSR, yychar, yyline, yytext());}
{espacio}+"ldaa"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LDAA, yychar, yyline, yytext());}
{espacio}+"ldab"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LDAB, yychar, yyline, yytext());}
{espacio}+"ldd"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LDD, yychar, yyline, yytext());}
{espacio}+"lds"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LDS, yychar, yyline, yytext());}
{espacio}+"ldx"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LDX, yychar, yyline, yytext());}
{espacio}+"ldy"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LDY, yychar, yyline, yytext());}
{espacio}+"lsl"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LSL, yychar, yyline, yytext());}
{espacio}+"lsr"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_LSR, yychar, yyline, yytext());}
{espacio}+"neg"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_NEG, yychar, yyline, yytext());}
{espacio}+"oraa"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ORAA, yychar, yyline, yytext());}
{espacio}+"orab"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ORAB, yychar, yyline, yytext());}
{espacio}+"rol"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDX_ROL, yychar, yyline, yytext());}
{espacio}+"ror"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_ROR, yychar, yyline, yytext());}
{espacio}+"sbca"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_SBCA, yychar, yyline, yytext());}
{espacio}+"sbcb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_SBCB, yychar, yyline, yytext());}
{espacio}+"staa"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_STAA, yychar, yyline, yytext());}
{espacio}+"stab"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_STAB, yychar, yyline, yytext());}
{espacio}+"std"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_STD, yychar, yyline, yytext());}
{espacio}+"sts"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_STS, yychar, yyline, yytext());}
{espacio}+"stx"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_STX, yychar, yyline, yytext());}
{espacio}+"sty"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_STY, yychar, yyline, yytext());}
{espacio}+"suba"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_SUBA, yychar, yyline, yytext());}
{espacio}+"subb"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_SUBB, yychar, yyline, yytext());}
{espacio}+"subd"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_SUBD, yychar, yyline, yytext());}
{espacio}+"tst"{espacio}+"$"{H}{2}",Y" {return new Symbol(sym.INDY_TST, yychar, yyline, yytext());}

{espacio} {return new Symbol(sym.Espacio, yychar, yyline,yytext());}
"*".* {return new Symbol(sym.Comentario, yychar, yyline,yytext());}
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

("(-"{D}+")")|{D}+ {return new Symbol(sym.Numero, yychar, yyline,yytext());}
 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}
