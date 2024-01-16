             CMD        PROMPT('PASERIE Installer       V1R1M0')
             PARM       KWD(REPO_OWNER) TYPE(*CHAR) LEN(30) MIN(1) +
                          CASE(*MIXED) PROMPT('GitHub repository owner')
             PARM       KWD(REPOSITORY) TYPE(*CHAR) LEN(10) MIN(1) +
                          CASE(*MIXED) PROMPT('Repository')
             PARM       KWD(YOURGITPAT) TYPE(*CHAR) LEN(40) DSPINPUT(*NO) DFT(*GETPAT) +
                          SPCVAL((*GETPAT '*GETPAT')) FULL(*YES) +
                          CASE(*MIXED) PROMPT('GitHub personal access token')      
             PARM       KWD(TGTLIB) TYPE(*CHAR) LEN(10) DFT(*REPOSITORY) +
                          SPCVAL((*REPOSITORY '*PACKAGEN')) +
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







