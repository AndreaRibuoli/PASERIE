CMD        PROMPT('PASERIE Bibliothek Klonen')
PARM       KWD(SRCLIB) TYPE(*CHAR) LEN(10) MIN(1) +
           PROMPT('Quellbibliothek')
PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) +
           DFT(*SRCLIB) SPCVAL((*SRCLIB '*SRCLIB')) +
           CASE(*MIXED) PROMPT('Zielprojektverzeichnis')
PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
           PROMPT('Entwickleroption') PMTCTL(*PMTRQS)
PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
           SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
           (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
           PROMPT('Ausgabe') PMTCTL(*PMTRQS)
PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
           PROMPT('Ausführlich') PMTCTL(*PMTRQS)

