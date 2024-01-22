             CMD        PROMPT('PASERIE Library Clone   V1R1M1')
             PARM       KWD(SRCLIB) TYPE(*CHAR) LEN(10) MIN(1) +
                          PROMPT('Source library')
             PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) +
                          DFT(*SRCLIB) SPCVAL((*SRCLIB '*SRCLIB')) +
                          CASE(*MIXED) PROMPT('Target project directory')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Development option') PMTCTL(*PMTRQS)
             PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
                          SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
                          (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
                          PROMPT('Job log output') PMTCTL(*PMTRQS)
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Verbose') PMTCTL(*PMTRQS)
             
