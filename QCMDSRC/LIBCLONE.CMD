             CMD        PROMPT('PASERIE Library Clone   V1R0M1')
             PARM       KWD(SRCLIB) TYPE(*CHAR) LEN(10) MIN(1) +
                          PROMPT('Source library')
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*SRCLIB) +
                          PROMPT('Target directory=new library')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT('N')
             PARM       KWD(JTMPLOP) TYPE(*CHAR) LEN(10) DFT('*PND      ')
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT('N')
