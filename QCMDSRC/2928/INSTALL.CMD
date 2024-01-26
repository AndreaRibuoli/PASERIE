CMD        PROMPT('PASERIE Installateur    V1R1M1')
PARM       KWD(REPO_OWNER) TYPE(*CHAR) LEN(30) MIN(1) +
            CASE(*MIXED) PROMPT('Propriétaire du dépôt GitHub')
PARM       KWD(REPOSITORY) TYPE(*CHAR) LEN(10) MIN(1) +
            CASE(*MIXED) PROMPT('Dépôt')
PARM       KWD(YOURGITPAT) TYPE(*CHAR) LEN(40) DSPINPUT(*NO) DFT(*GETPAT) +
            SPCVAL((*GETPAT '*GETPAT')) FULL(*YES) +
            CASE(*MIXED) PROMPT('Token d''accès personnel GitHub')
PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*REPOSITORY) +
            SPCVAL((*REPOSITORY '*PACKAGEN')) +
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
