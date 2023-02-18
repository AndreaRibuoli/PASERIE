             CMD        PROMPT('PASERIE Install2 Pgm    V1R0M0')
             PARM       KWD(GIT_USER) TYPE(*CHAR) LEN(30) MIN(1) +
                          CASE(*MIXED) PROMPT('GitHub User Profile')
             PARM       KWD(PACKAGEN) TYPE(*CHAR) LEN(10) MIN(1) +
                          CASE(*MIXED) PROMPT('Repository = LIBRARY')
             PARM       KWD(GITTOK_A) TYPE(*CHAR) LEN(20) DSPINPUT(*NO) +
                          DFT('ghp_p5azbGwMqyARh0gz') FULL(*YES) +
                          CASE(*MIXED) PROMPT('First half of token')
             PARM       KWD(GITTOK_B) TYPE(*CHAR) LEN(20) DSPINPUT(*NO) +
                          DFT('A2N60Xz6HP5J4Y2bZ5gA') FULL(*YES) +
                          CASE(*MIXED) PROMPT('Second half of token')
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*PACKAGEN) +
                          PROMPT('Overwrite Target library')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT('N')
             PARM       KWD(JTMPLOP) TYPE(*CHAR) LEN(10) DFT('*PND      ')
             PARM       KWD(TGTRLS)  TYPE(*CHAR) LEN(10) DFT('*CURRENT  ')
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT('N')







