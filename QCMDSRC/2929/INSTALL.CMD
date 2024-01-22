CMD        PROMPT('PASERIE Installateur V1R1M1')
PARM       KWD(REPO_OWNER) TYPE(*CHAR) LEN(30) MIN(1) +
           CASE(*MIXED) PROMPT('GitHub Repository Besitzer')
PARM       KWD(REPOSITORY) TYPE(*CHAR) LEN(10) MIN(1) +
           CASE(*MIXED) PROMPT('Repository')
PARM       KWD(YOURGITPAT) TYPE(*CHAR) LEN(40) DSPINPUT(*NO) DFT(*GETPAT) +
           SPCVAL((*GETPAT '*GETPAT')) FULL(*YES) +
           CASE(*MIXED) PROMPT('GH persönlicher Zugriffstoken')
PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*REPOSITORY) +
           SPCVAL((*REPOSITORY '*PACKAGEN')) +
           PROMPT('Zielbibliothek')
PARM       KWD(TGTRLS) TYPE(*CHAR) LEN(10) DFT(*CURRENT) +
           SPCVAL((*CURRENT '*CURRENT') (*PRV '*PRV')) +
           PROMPT('Zielfreigabe')
PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
           PROMPT('Entwicklungsoption') PMTCTL(*PMTRQS)
PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
           SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
           (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
           PROMPT('Auftragsprotokoll-Ausgabe') PMTCTL(*PMTRQS)
PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
           PROMPT('Ausführlich') PMTCTL(*PMTRQS)







