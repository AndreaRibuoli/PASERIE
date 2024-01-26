CMD        PROMPT('PASERIE Clonage bibliothèque')
PARM       KWD(SRCLIB) TYPE(*CHAR) LEN(10) MIN(1) +
            PROMPT('Bibliothèque source')
PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) +
            DFT(*SRCLIB) SPCVAL((*SRCLIB '*SRCLIB')) +
            CASE(*MIXED) PROMPT('Répertoire cible du projet')
PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
            PROMPT('Option de développement') PMTCTL(*PMTRQS)
PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
            SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
            (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
            PROMPT('Sortie du journal de travail') PMTCTL(*PMTRQS)
PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
            PROMPT('Verbeux') PMTCTL(*PMTRQS)
