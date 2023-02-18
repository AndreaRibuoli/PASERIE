             CMD        PROMPT('PASERIE Local Inst Program V1R0M0')
             PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) MIN(1) +
                          CASE(*MIXED) PROMPT('Project directory')
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*LOCALPATH) +
                          PROMPT('Target library')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT('N')
             PARM       KWD(JTMPLOP) TYPE(*CHAR) LEN(10) DFT('*PND      ')
             PARM       KWD(TGTRLS)  TYPE(*CHAR) LEN(10) DFT('*CURRENT  ')
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT('N')






