             CMD        PROMPT('PASERIE Clona Libraria  V1R1M0')
             PARM       KWD(SRCLIB) TYPE(*CHAR) LEN(10) MIN(1) +
                          PROMPT('Libreria di sorgenti')
             PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) +
                          DFT(*SRCLIB) SPCVAL((*SRCLIB '*SRCLIB')) +
                          CASE(*MIXED) PROMPT('Directory del progetto')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Opzione di sviluppo') PMTCTL(*PMTRQS)
             PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
                          SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
                          (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
                          PROMPT('Emissione registrazione lavoro') PMTCTL(*PMTRQS)
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Verboso') PMTCTL(*PMTRQS)
             
