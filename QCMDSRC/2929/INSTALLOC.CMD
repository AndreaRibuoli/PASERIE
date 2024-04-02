CMD        PROMPT('PASERIE Lokalen Installateur')
PARM       KWD(LOCAL_PATH) TYPE(*CHAR) LEN(100) MIN(1) +
           CASE(*MIXED) PROMPT('Projektverzeichnis')
PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*LOCAL_PATH) +
           SPCVAL((*LOCAL_PATH '*PACKAGEN')) +
           PROMPT('Zielbibliothek')
PARM       KWD(TGTRLS) TYPE(*CHAR) LEN(10) DFT(*CURRENT) +
           SPCVAL((*CURRENT '*CURRENT') (*PRV '*PRV')) +
           PROMPT('Ziel-Release')
PARM       KWD(DEVOPT) TYPE(*CHAR) LEN(1) DFT(N) +
           PROMPT('Entwickleroption') PMTCTL(*PMTRQS)
PARM       KWD(LOGOUTPUT) TYPE(*CHAR) LEN(10) DFT(*PND) +
           SPCVAL((*SAME '*SAME') (*SYSVAL '*SYSVAL') +
           (*JOBLOGSVR '*JOBLOGSVR') (*JOBEND '*JOBEND') (*PND '*PND')) +
           PROMPT('Auftragsprotokoll-Ausgabe') PMTCTL(*PMTRQS)
PARM       KWD(VERBOSE) TYPE(*CHAR) LEN(1) DFT(N) +
           PROMPT('Ausführlich') PMTCTL(*PMTRQS)






