# PASERIE (V1R0M2)
### Utility for Source-Level Distribution in IBM i

This utility helps you maintain your IBM i source code on GitHub.
Once available on a target system the utility allows you to install your packages 
in a very simple way, directly accessing your repositories on GitHub
or the repositories of other developers that authorized you.

The **Basic Edition** provides **PASERIE/INSTALL** command and a very simple mechanism to 
locally register your GitHub's *Personal Access Token* so that you will be not required to pass it with every request. 

This specific routine is implemented as an exit program that can be customized to your organization's specific needs
by restoring the CL source of the **PASERIE/GETPAT** program (*Retrieve Personal access token*).

The initial program performs a simple `RTVDTAARA` over a data area named *GETTOKEN*, expected to exist in PASERIE library.

Note: One suggestion could be to create a file of authorised users where programmers' tokens are kept in an encrypted column
so that the current user's token is returned when invoked. 

The **Developer Edition** includes other tools like **PASERIE/INSTALLOC** and **PASERIE/LIBCLONE**.

The *Basic and Developer Editions* will check for a valid IBM i license key before providing their services.
The **Developer Edition** includes a kit of **10** Basic Edition license keys that will be generated for the 
developer to register on her/his customers' systems.

## PARAMETERS

|     KWD    |  INSTALL  | INSTALLOC | LIBCLONE  |
|:----------:|:---------:|:---------:|:---------:|
| REPO_OWNER |    yes    |           |           | 
| REPOSITORY |    yes    |           |           | 
| YOURGITPAT |    yes    |           |           | 
| SRCLIB     |           |           |    yes    | 
| LOCALPATH  |           |    yes    |    yes    | 
| TGTLIB     |    yes    |    yes    |           | 
| TGTRLS     |    yes    |    yes    |           | 
| DEVOPT     |    yes    |    yes    |    yes    | 
| LOGOUTPUT  |    yes    |    yes    |    yes    | 
| VERBOSE    |    yes    |    yes    |    yes    | 





## THE NAME

pastry ==> *pâ-tis-se-rie* ==> **PASERIE**

## FUTURE DEVELOPMENTS

To support product packaging with traditional IBM i Software Product APIs.
At least I would like to support RSTLICPGM but the objective is to include license key generation, too.


```
CRTPRDDFN PRDDFN(PASERIE/PRDDFN1) 
          PRDID(1PSRIE1) 
          RLS(V1R0M5) 
          RGSID(*PHONE 00393408696240) 
          MSGF(PSRMSGF) 
          PRDOPT((*BASE PSR000A *NODYNNAM (2924 2932))
                 (1 PSR000B *NODYNNAM (*BASEOPT) 5002)
                 (2 PSR000C *NODYNNAM (*BASEOPT) 5003)) 
          CPYRGTFST(2023) 
          RLSDATE('23/03/2023') 
          TEXT('Product Definition') 
          AUT(*USE)                                                                    
```

CALL QCMD

CRTPRDDFN PRDDFN(PASERIE/PRDDFN1) PRDID(1PSRIE1) RLS(V1R0M5) RGSID(*PHONE 00393408696240) MSGF(PSRMSGF) PRDOPT((*BASE PSR000A *NODYNNAM (2924 2932)) (1 PSR000B *NODYNNAM (*BASEOPT) 5002) (2 PSR000C *NODYNNAM (*BASEOPT) 5003)) CPYRGTFST(2023) RLSDATE('23/03/2023') TEXT('Product Definition') AUT(*USE)    

```
SPAZIO-                                                                                                                 
  000000   000005B7 40404040 40404040 40404040   40404040 40404040 40404040 40404040  *   ¼                            *
  000020   40404040 40404040 40404040 40404040   40404040 40404040 40404040 40404040  *                                *
        RIGHE  000040    A     0000FF  COME SOPRA                                                                       
  000100   D7C4D640 F1F10000 00F1D7E2 D9C9C5F1   40404040 40404040 40404040 F0F0F0F1  *PDO 11   1PSRIE1            0001*
  000120   F0F0F0F5 00000000 40404040 40404040   40404040 40404040 40404040 40404040  *0005                            *
  000140   40404040 40404040 40404040 40404040   40404040 40404040 40404040 40404040  *                                *
  000160   40404040 40404040 40404040 40404040   40404040 40404040 40404040 40404040  *                                *
  000180   40404040 40404040 40400000 00000000   00000000 02500000 0000F0F0 F0F1F0F2  *                     &    000102*
  0001A0   F0F00000 00000000 00000000 00000000   0000D7D9 C4C4C6D5 F1404040 00000000  *00                PRDDFN1       *
  0001C0   0000D7C1 E2C5D9C9 C5404040 00000000   0000F2F3 F0F3F2F3 F2F0F2F3 F2F0F2F3  *  PASERIE         23032320232023*
  0001E0   D7E2D9D4 E2C7C640 40400000 00000000   0E030000 D7C1E2C5 D9C9C540 40400000  *PSRMSGF             PASERIE     *
  000200   00000000 F0F2F0F0 F3F9F3F4 F0F8F6F9   F6F2F4F0 40404040 40404040 40404040  *    0200393408696240            *
  000220   40404040 00004040 40404040 40404040   40404040 40000000 00D5F100 00000000  *                         N1     *
  000240   00000000 00000000 00000000 00000000   00000000 00000367 00000009 00000003  *                       Å        *
  000260   0000005F 00404000 D5000000 5CD4C1E3   C3C80000 F1F1F0F1 D7E2D9C9 C5F1F5F0  *   ^    N   *MATCH  1101PSRIE150*
  000280   F0F1F0F0 F0F0D7C1 E2C5D9C9 C5404040   4040D7E2 D9F0F0F0 C1000000 000000A0  *010000PASERIE     PSR000A      µ*
  0002A0   40404040 40404040 40400000 00000000   40404040 40404040 40404040 40404000  *                                *
  0002C0   00005F00 404000D5 0000005C D4C1E3C3   C80000F3 F1F0F1D7 E2D9C9C5 F1F2F9F2  *  ^    N   *MATCH  3101PSRIE1292*
  0002E0   F4F0F0F0 F0D7C1E2 C5D9C9C5 40404040   40D7E2D9 F0F0F0C1 00000000 0000A040  *40000PASERIE     PSR000A      µ * 
  0002E0   F4F0F0F0 F0D7C1E2 C5D9C9C5 40404040   40D7E2D9 F0F0F0C1 00000000 0000A040  *40000PASERIE     PSR000A      µ *
  000300   40404040 40404040 40000000 00000040   40404040 40404040 40404040 40400000  *                                *
  000320   005F0040 4000D500 00005CD4 C1E3C3C8   0000F3F1 F0F1D7E2 D9C9C5F1 F2F9F3F2  * ^    N   *MATCH  3101PSRIE12932*
  000340   F0F0F0F0 D7C1E2C5 D9C9C540 40404040   D7E2D9F0 F0F0C100 00000000 00A04040  *0000PASERIE     PSR000A      µ  *
  000360   40404040 40404040 00000000 00004040   40404040 40404040 40404040 40000000  *                                *
  000380   5F004040 00D50000 005CD4C1 E3C3C800   00F1F3F0 F1D7E2D9 C9C5F1F5 F0F0F2F0  *^    N   *MATCH  1301PSRIE150020*
  0003A0   F0F0F1D7 C1E2C5D9 C9C54040 404040D7   E2D9F0F0 F0C20000 00000000 A0404040  *001PASERIE     PSR000B      µ   *
  0003C0   40404040 40404000 00000000 00404040   40404040 40404040 40404040 0000005F  *                               ^*
  0003E0   00404000 D5000000 5CD4C1E3 C3C80000   F3F3F0F1 D7E2D9C9 C5F1F2F9 F2F4F0F0  *    N   *MATCH  3301PSRIE1292400*
  000400   F0F1D7C1 E2C5D9C9 C5404040 4040D7E2   D9F0F0F0 C2000000 000000A0 40404040  *01PASERIE     PSR000B      µ    *
  000420   40404040 40400000 00000000 40404040   40404040 40404040 40404000 00005F00  *                              ^ *
  000440   404000D5 0000005C D4C1E3C3 C80000F3   F3F0F1D7 E2D9C9C5 F1F2F9F3 F2F0F0F0  *   N   *MATCH  3301PSRIE12932000*
  000460   F1D7C1E2 C5D9C9C5 40404040 40D7E2D9   F0F0F0C2 00000000 0000A040 40404040  *1PASERIE     PSR000B      µ     *
  000480   40404040 40000000 00000040 40404040   40404040 40404040 40400000 005F0040  *                             ^  *
  0004A0   4000D500 00005CD4 C1E3C3C8 0000F1F3   F0F1D7E2 D9C9C5F1 F5F0F0F3 F0F0F0F2  *  N   *MATCH  1301PSRIE150030002*
  0004C0   D7C1E2C5 D9C9C540 40404040 D7E2D9F0   F0F0C300 00000000 00A04040 40404040  *PASERIE     PSR000C      µ      *
  0004E0   40404040 00000000 00004040 40404040   40404040 40404040 40000000 5F004040  *                            ^   *
  000500   00D50000 005CD4C1 E3C3C800 00F3F3F0   F1D7E2D9 C9C5F1F2 F9F2F4F0 F0F0F2D7  * N   *MATCH  3301PSRIE129240002P*
  000520   C1E2C5D9 C9C54040 404040D7 E2D9F0F0   F0C30000 00000000 A0404040 40404040  *ASERIE     PSR000C      µ       *
  000540   40404000 00000000 00404040 40404040   40404040 40404040 0000005F 00404000  *                           ^    *                                           000560   D5000000 5CD4C1E3 C3C80000 F3F3F0F1   D7E2D9C9 C5F1F2F9 F3F2F0F0 F0F2D7C1  *N   *MATCH  3301PSRIE129320002PA*
  000580   E2C5D9C9 C5404040 4040D7E2 D9F0F0F0   C3000000 000000A0 40404040 40404040  *SERIE     PSR000C      µ        *
  0005A0   40400000 00000000 40404040 40404040   40404040 40404000 00000000 00000000  *                                *
  0005C0   00000000 00000000 00000000 00000000   00000000 00000000 00000000 00000000  *                                *
        RIGHE  0005E0    A     001FFF  COME SOPRA                                                                       
.PUNTATORI-                                                                                                             
  NESSUNO                                                                                                               
DATI OIR-                                                                                                               
.TESTO-                                                                                                                 
  000000   D7999684 A483A340 C4858689 9589A389   96954040 40404040 40404040 40404040  *Product Definition              *
  000020   40404040 40404040 40404040 40404040   4040                                 *                                *
.SERVIZIO-                                                                                                              
  000000   40404040 40404040 40404040 40404040   40404040 40F14040 40404040 40404040  *                     1          *
  000020   40404040 40404040 404040E5 F7D9F3D4   F0F1F2F3 F0F2F2F7 F1F0F2F4 F3F74040  *           V7R3M01230227102437  *
  000040   40404040 40404040 40404040 40404040   40404040 40404040 40404040 40404040  *                                *
  000060   40404040 40404040 40404040 40404040   40404040 40404040 00000000 00000000  *                                *
  000080   00000000 00000000 00000000 00000000   00000000 00000000 40400000 00000000  *                                *  
  0000A0   00000000 00000000                                                          *                                *
.UTILIZZO-                                                                                                              
  000000   C1D5C4D9 C5E6D9C9 C25BE2F0 F6F4F5C4   F8D90000 00000000 0000               *ANDREWRIB$S0645D8R              *  
```  