package codigo;

/**
 *
 * @author abihs
 */
public enum Tokens {
    Linea,
    ORG,
    EQU,
    Comentario,
    FCB,
    END,
    Gato,
    Apostrofe,
    SignoPeso,
    Opcode,
    INH_ABA,
    INH_ABX,
    INH_ABY,
    INH_ASLA,
    INH_ASLB,
    INH_ASLD,
    INH_ASRA,
    INH_ASRB,
    INH_CBA,
    INH_CLC,
    INH_CLI,
    INH_CLRA,
    INH_CLRB,
    INH_CLV,
    INH_COMA,
    INH_COMB,
    INH_DAA,
    INH_DECA,
    INH_DECB,
    INH_DES,
    INH_DEX,
    INH_DEY,
    INH_FDIV,
    INH_IDIV,
    INH_INCA,
    INH_INCB,
    INH_INS,
    INH_INX,
    INH_INY,
    INH_LSLA,
    INH_LSLB,
    INH_LSLD,
    INH_LSRA,
    INH_LSRB,
    INH_LSRD,
    INH_MUL,
    INH_NEGA,
    INH_NEGB,
    INH_NOP,
    INH_PSHA,
    INH_PSHB,
    INH_PSHX,
    INH_PSHY,
    INH_PULA,
    INH_PULB,
    INH_PULX,
    INH_PULY,
    INH_ROLA,
    INH_ROLB,
    INH_RORA,
    INH_RORB,
    INH_RTI,
    INH_RTS,
    INH_SBA,
    INH_SEC,
    INH_SEI,
    INH_SEV,
    INH_STOP,
    INH_SWI,
    INH_TAB,
    INH_TAP,
    INH_TBA,
    INH_TETS,
    INH_TPA,
    INH_TSTA,
    INH_TSTB,
    INH_TSX,
    INH_TSY,
    INH_TXS,
    INH_TYS,
    INH_WAI,
    INH_XGDX,
    INH_XGDY,
    IMM_ADCA_HEXA,
    IMM_ADCA_DEC,
    IMM_ADCA_CHAR,
    IMM_ADCB_HEXA,
    IMM_ADCB_DEC,
    IMM_ADCB_CHAR,
    IMM_ADDA_HEXA,
    IMM_ADDA_DEC,
    IMM_ADDA_CHAR,
    IMM_ADDB_HEXA,
    IMM_ADDB_DEC,
    IMM_ADDB_CHAR,
    IMM_ADDD_HEXA,
    IMM_ADDD_DEC,
    IMM_ADDD_CHAR,
    IMM_ANDA_HEXA,
    IMM_ANDA_DEC,
    IMM_ANDA_CHAR,
    IMM_ANDB_HEXA,
    IMM_ANDB_DEC,
    IMM_ANDB_CHAR,
    IMM_BITA_HEXA,
    IMM_BITA_DEC,
    IMM_BITA_CHAR,
    IMM_BITB_HEXA,
    IMM_BITB_DEC,
    IMM_BITB_CHAR,
    IMM_CMPA_HEXA,
    IMM_CMPA_DEC,
    IMM_CMPA_CHAR,
    IMM_CMPB_HEXA,
    IMM_CMPB_DEC,
    IMM_CMPB_CHAR,
    IMM_CPD_HEXA,
    IMM_CPD_DEC,
    IMM_CPD_CHAR,
    IMM_CPX_HEXA,
    IMM_CPX_DEC,
    IMM_CPX_CHAR,
    IMM_CPY_HEXA,
    IMM_CPY_DEC,
    IMM_CPY_CHAR,
    IMM_EORA_HEXA,
    IMM_EORA_DEC,
    IMM_EORA_CHAR,
    IMM_EORB_HEXA,
    IMM_EORB_DEC,
    IMM_EORB_CHAR,
    IMM_LDAA_HEXA,
    IMM_LDAA_DEC,
    IMM_LDAA_CHAR,
    IMM_LDAB_HEXA,
    IMM_LDAB_DEC,
    IMM_LDAB_CHAR,
    IMM_LDD_HEXA,
    IMM_LDD_DEC,
    IMM_LDD_CHAR,
    IMM_LDS_HEXA,
    IMM_LDS_DEC,
    IMM_LDS_CHAR,
    IMM_LDX_HEXA,
    IMM_LDX_DEC,
    IMM_LDX_CHAR,
    IMM_LDY_HEXA,
    IMM_LDY_DEC,
    IMM_LDY_CHAR,
    IMM_ORAA_HEXA,
    IMM_ORAA_DEC,
    IMM_ORAA_CHAR,
    IMM_ORAB_HEXA,
    IMM_ORAB_DEC,
    IMM_ORAB_CHAR,
    IMM_SBCA_HEXA,
    IMM_SBCA_DEC,
    IMM_SBCA_CHAR,
    IMM_SBCB_HEXA,
    IMM_SBCB_DEC,
    IMM_SBCB_CHAR,
    IMM_SUBA_HEXA,
    IMM_SUBA_DEC,
    IMM_SUBA_CHAR,
    IMM_SUBB_HEXA,
    IMM_SUBB_DEC,
    IMM_SUBB_CHAR,
    IMM_SUBD_HEXA,
    IMM_SUBD_DEC,
    IMM_SUBD_CHAR,
    DIR_ADCA_HEXA,
    DIR_ADCA_DEC,
    DIR_ADCB_HEXA,
    DIR_ADCB_DEC,
    DIR_ADDA_HEXA,
    DIR_ADDA_DEC,
    DIR_ADDB_HEXA,
    DIR_ADDB_DEC,
    DIR_ADDD_HEXA,
    DIR_ADDD_DEC,
    DIR_ANDA_HEXA,
    DIR_ANDA_DEC,
    DIR_ANDB_HEXA,
    DIR_ANDB_DEC,
    DIR_BCLR_HEXA,
    DIR_BCLR_DEC,
    DIR_BITA_DEC,
    DIR_BITA_HEXA,
    DIR_BITB_HEXA,
    DIR_BITB_DEC,
    DIR_BRCLR_HEXA,
    DIR_BRCLR_DEC,
    DIR_BRSET_HEXA,
    DIR_BRSET_DEC,
    DIR_BSET_HEXA,
    DIR_BSET_DEC,
    DIR_CMPA_HEXA,
    DIR_CMPA_DEC,
    DIR_CMPB_HEXA,
    DIR_CMPB_DEC,
    DIR_CPD_HEXA,
    DIR_CPD_DEC,
    DIR_CPX_HEXA,
    DIR_CPX_DEC,
    DIR_CPY_HEXA,
    DIR_CPY_DEC,
    DIR_EORA_HEXA,
    DIR_EORA_DEC,
    DIR_EORB_HEXA,
    DIR_EORB_DEC,
    DIR_JSR_HEXA,
    DIR_JSR_DEC,
    DIR_LDAA_HEXA,
    DIR_LDAA_DEC,
    DIR_LDAB_HEXA,
    DIR_LDAB_DEC,
    DIR_LDD_HEXA,
    DIR_LDD_DEC,
    DIR_LDS_HEXA,
    DIR_LDS_DEC,
    DIR_LDX_HEXA,
    DIR_LDX_DEC,
    DIR_LDY_HEXA,
    DIR_LDY_DEC,
    DIR_ORAA_HEXA,
    DIR_ORAA_DEC,
    DIR_ORAB_HEXA,
    DIR_ORAB_DEC,
    DIR_SBCA_HEXA,
    DIR_SBCA_DEC,
    DIR_SBCB_HEXA,
    DIR_SBCB_DEC,
    DIR_STAA_HEXA,
    DIR_STAA_DEC,
    DIR_STAB_HEXA,
    DIR_STAB_DEC,
    DIR_STD_HEXA,
    DIR_STD_DEC,
    DIR_STS_HEXA,
    DIR_STS_DEC,
    DIR_STX_HEXA,
    DIR_STX_DEC,
    DIR_STY_HEXA,
    DIR_STY_DEC,
    DIR_SUBA_DEC,
    DIR_SUBA_HEXA,
    DIR_SUBB_HEXA,
    DIR_SUBB_DEC,
    DIR_SUBD_HEXA,
    DIR_SUBD_DEC,
    INDX_ADCA,
    INDY_ADCA,
    INDX_ADCB,
    INDY_ADCB,
    INDX_ADDA,
    INDY_ADDA,
    INDX_ADDB,
    INDY_ADDB,
    INDX_ADDD,
    INDY_ADDD,
    INDX_ANDA,
    INDY_ANDA,
    INDX_ANDB,
    INDY_ANDB,
    INDX_ASL,
    INDY_ASL,
    INDX_ASR,
    INDY_ASR,
    INDX_BCLR,
    INDY_BCLR,
    INDX_BITA,
    INDY_BITA,
    INDX_BITB,
    INDY_BITB,
    INDX_BRCLR,
    INDY_BRCLR,
    INDX_BRSET,
    INDY_BRSET,
    INDX_BSET,
    INDY_BSET,
    INDX_CLR,
    INDY_CLR,
    INDX_CMPA,
    INDY_CMPA,
    INDX_CMPB,
    INDY_CMPB,
    INDX_COM,
    INDY_COM,
    INDX_CPD,
    INDY_CPD,
    INDX_CPX,
    INDY_CPX,
    INDX_CPY,
    INDY_CPY,
    INDX_DEC,
    INDY_DEC,
    INDX_EORA,
    INDY_EORA,
    INDX_EORB,
    INDY_EORB,
    INDX_INC,
    INDY_INC,
    INDX_JMP,
    INDY_JMP,
    INDX_JSR,
    INDY_JSR,
    INDX_LDAA,
    INDY_LDAA,
    INDX_LDAB,
    INDY_LDAB,
    INDX_LDD,
    INDY_LDD,
    INDX_LDS,
    INDY_LDS,
    INDX_LDX,
    INDY_LDX,
    INDX_LDY,
    INDY_LDY,
    INDX_LSL,
    INDY_LSL,
    INDX_LSR,
    INDY_LSR,
    INDX_NEG,
    INDY_NEG,
    INDX_ORAA,
    INDY_ORAA,
    INDX_ORAB,
    INDY_ORAB,
    INDX_ROL,
    INDY_ROL,
    INDX_ROR,
    INDY_ROR,
    INDX_SBCA,
    INDY_SBCA,
    INDX_SBCB,
    INDY_SBCB,
    INDX_STAA,
    INDY_STAA,
    INDX_STAB,
    INDY_STAB,
    INDX_STD,
    INDY_STD,
    INDX_STS,
    INDY_STS,
    INDX_STX,
    INDY_STX,
    INDX_STY,
    INDY_STY,
    INDX_SUBA,
    INDY_SUBA,
    INDX_SUBB,
    INDY_SUBB,
    INDX_SUBD,
    INDY_SUBD,
    INDX_TST,
    INDY_TST,
    Etiq_Var_Instrucc,
    Org_Equ,
    NumeroHexaIMM,
    NumeroDecIMM,
    CharIMM,
    NumeroHexaDIR,
    NumeroDecDIR_EXT,
    NumeroHexaEXT,
    NumeroHexaINDX,
    NumeroHexaINDY,
    Numero,
    DosPuntos,
    Espacio,
    ERROR,
}
