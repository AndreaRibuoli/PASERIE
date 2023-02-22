             CMD        PROMPT('PASERIE Installer       V1R0M1')
             PARM       KWD(GIT_USER) TYPE(*CHAR) LEN(30) MIN(1) +
                          CASE(*MIXED) PROMPT('GitHub Developer Profile')
             PARM       KWD(PACKAGEN) TYPE(*CHAR) LEN(10) MIN(1) +
                          CASE(*MIXED) PROMPT('Repository')
             PARM       KWD(GITTOKEN) TYPE(*CHAR) LEN(40) DSPINPUT(*NO) DFT(*DTAARA) +
                          SPCVAL((*DTAARA '*DTAARA')) +
                          FULL(*YES) CASE(*MIXED) PROMPT('Personal access token')      
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*PACKAGEN) +
                          PROMPT('Target library')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT('N') +
                          PROMPT('Developemnt option')
             PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT('*PND      ') +
                          PROMPT('Job lob output')
             PARM       KWD(TGTRLS)  TYPE(*CHAR) LEN(10) DFT('*CURRENT  ') +
                          PROMPT('Target release')
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT('N') +
                          PROMPT('Verbose')







