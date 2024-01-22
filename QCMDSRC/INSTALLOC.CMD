             CMD        PROMPT('PASERIE Local Installer V1R1M1')
             PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) MIN(1) +
                          CASE(*MIXED) PROMPT('Project directory')
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*LOCAL_PATH) +
                          SPCVAL((*LOCAL_PATH '*PACKAGEN')) +
                          PROMPT('Target library')
             PARM       KWD(TGTRLS)  TYPE(*CHAR) LEN(10) DFT(*CURRENT) +
                          SPCVAL((*CURRENT '*CURRENT') (*PRV '*PRV')) +
                          PROMPT('Target release')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Development option') PMTCTL(*PMTRQS)
             PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
                          SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
                          (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
                          PROMPT('Job log output') PMTCTL(*PMTRQS)
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Verbose') PMTCTL(*PMTRQS)






