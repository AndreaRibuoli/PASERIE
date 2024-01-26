CMD        PROMPT('PASERIE Installateur local')
PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) MIN(1) +
            CASE(*MIXED) PROMPT('Répertoire du projet')
PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*LOCAL_PATH) +
            SPCVAL((*LOCAL_PATH '*PACKAGEN')) +
            PROMPT('Bibliothèque cible')
PARM       KWD(TGTRLS) TYPE(*CHAR) LEN(10) DFT(*CURRENT) +
            SPCVAL((*CURRENT '*CURRENT') (*PRV '*PRV')) +
            PROMPT('Version cible')
PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
            PROMPT('Option de développement') PMTCTL(*PMTRQS)
PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
            SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
            (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
            PROMPT('Sortie du journal de travail') PMTCTL(*PMTRQS)
PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
            PROMPT('Verbeux') PMTCTL(*PMTRQS)
