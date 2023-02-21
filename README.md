# PASERIE (V1R0M1)
### Utility for Source-Level Distribution in IBM i

This utility helps you maintain your IBM i source code on GitHub.
Once available on a target system the utility allows you to install your packages 
in a very simple way, directly accessing your repositories on GitHub
or the repositories of other developers that authorized you.

The Community Edition does not provide you a mechanism to locally register your GitHub's *Personal Access Token*
so that you will be required to pass it in every request involving access to a Private repository.

The Developer Edition provides you such a mechanism simplifying automation 
(e.g.: a CL could include multiple INSTALL commands without storing tokens)

The application being packaged for PASERIE/INSTALL follows the same rules: no need to keep different versions of your 
source code.

The Community Edition is limited to the INSTALL utility.

The Developer Edition includes also INSTALLOC and LIBCLONE, plus the services to persist your token, safely.

The Developer Edition will check for a valid IBM i license key before providing these extra services.
The Developer Edition is actually made up of Community Edition with the addition of the extra utilities.

## FUTURE DEVELOPMENTS

To support product packaging with traditional IBM i Software Product APIs.
At least I would like to support RSTLICPGM but the objective is to include license key generation, too.


```
                  Creazione definizione prodotto (CRTPRDDFN)         
                                                                     
Immettere le scelte e premere Invio.                                 
                                                                     
Definizione prodotto . . . . . . PRDDFN         PRDDFN               
  Libreria . . . . . . . . . . .                  PASERIE            
ID prodotto  . . . . . . . . . . PRDID          1PSRIE1              
Livello di release . . . . . . . RLS            V1R0M5               
Identificativo registrazione:    RGSID                               
  Tipo di registrazione  . . . .                                     
  Valore di registrazione  . . .                                     
File messaggio . . . . . . . . . MSGF                                
Opzioni prodotto:                PRDOPT                              
  Opzione prodotto . . . . . . .                                     
  Identificativo messaggio . . .                                     
  Consentire denominaz. dinam.                  *NODYNNAM            
  ID caricamento lingua  . . . .                *NONE                
                         + per altri valori                          
  ID caricamento codice  . . . .                *CODEDFT             
                         + per altri valori                          ```

