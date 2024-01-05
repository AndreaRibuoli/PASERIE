# PASERIE (V1R0M8)
### Utility for Source-Level Distribution in IBM i

This utility helps you maintain your IBM i source code on GitHub.
Once available on a target system the utility allows you to install your packages 
in a very simple way, directly accessing your repositories on GitHub
or the repositories of other developers that authorized you.

The suite provides three tools:

* **PASERIE/INSTALL** the main command focusing on the installation phase of an already developed and released package.
* **PASERIE/INSTALLOC** the command used in the development phase to test the installation of a package planned to be released directly from a directory in the IFS.
* **PASERIE/LIBCLONE** the command used to jump\-start the packaging (consistent with PASERIE tools) from an existing native library. 

```
    from GitHub                  from IFS 
┌────────────────┐          ┌────────────────┐    
│                ├┐         │                ├┐   
│                ││         │                ││   
│                ││         │                ││   
│                ││         │                ││   
│                ││         │                ││   
└┬──────\\───────┘│         └┬──────//───────┘│
 └───────\\───────┘          └─────//─────────┘  
          \\                      //
        INSTALL               INSTALLOC
            \\                  //
             \\                //
              ┌────────────────┐
              │                │
              │   Q T E M P    │     (GUIDANCE.TXT lists source members)
              │                │
              └────────────────┘
                     
              QTEMP/QCLSRC(BUILD)    (compiled on the fly and executed)   
```

## INSTALLATION

Let's first create an empty SAVEFILE named `QGPL/PASERIE`.
Then, from `CALL QP2TERM`, we verify to have **curl** installed:

```
  $                                        
> PATH=/QOpenSys/pkgs/bin:$PATH            
  $                                        
> export PATH                              
  $         
> which curl
  /QOpenSys/pkgs/bin/curl
```
By means of curl we download 2 archives:
                                                                      

```                  
curl -o PaseOssFloating.tar \
        https://www.andrearibuoli.it/paserie/PaseOssFloating.tar    
```
        
```                  
curl -o /QSYS.LIB/QGPL.LIB/PASERIE.FILE \
        https://www.andrearibuoli.it/paserie/PASERIE.SAVF
```

From the home path of the user that will be using **PASERIE/INSTALL** we
install **PaseOss** folder by untarring *PaseOssFloating* tar file:

```
tar xvf PaseOssFloating.tar
```

Now, closed the QP2TERM session, and can perform the `RSTLIB` for PASERIE.

<!--
and a very simple mechanism to 
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
-->

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



![INSTALL](PASERIE_INSTALL_V1R0M2.png)

![INSTALL](PASERIE_INSTALLOC_V1R0M2.png)

![INSTALL](PASERIE_LIBCLONE_V1R0M2.png)

## THE NAME

pastry ==> *pâ-tis-se-rie* ==> **PASERIE**

<!--
## FUTURE DEVELOPMENTS

To support product packaging with traditional IBM i Software Product APIs.
At least I would like to support RSTLICPGM but the objective is to include license key generation, too.
-->
