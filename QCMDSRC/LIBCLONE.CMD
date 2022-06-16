             CMD        PROMPT('PASERIE Lib Clone Program')
             PARM       KWD(SRCLIB) TYPE(*CHAR) LEN(10) MIN(1) +
                          PROMPT('Source library')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT('N')
             PARM       KWD(JTMPLOP) TYPE(*CHAR) LEN(10) DFT('*PND      ')
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT('N')
