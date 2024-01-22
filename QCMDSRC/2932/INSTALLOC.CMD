             CMD        PROMPT('PASERIE Installa locale V1R1M1')
             PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) MIN(1) +
                          CASE(*MIXED) PROMPT('Directory del progetto')
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*LOCAL_PATH) +
                          SPCVAL((*LOCAL_PATH '*PACKAGEN')) +
                          PROMPT('Caricamento nella libreria')
             PARM       KWD(TGTRLS)  TYPE(*CHAR) LEN(10) DFT(*CURRENT) +
                          SPCVAL((*CURRENT '*CURRENT') (*PRV '*PRV')) +
                          PROMPT('Rilascio di destinazione')
             PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Opzione di sviluppo') PMTCTL(*PMTRQS)
             PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
                          SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
                          (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
                          PROMPT('Emissione registrazione lavoro') PMTCTL(*PMTRQS)
             PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
                          PROMPT('Verboso') PMTCTL(*PMTRQS)






