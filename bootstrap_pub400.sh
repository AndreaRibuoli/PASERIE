#
# Andrea Ribuoli © 2024 - PASERIE Bootstrap
#
# Initial install given PUB400's constraints
#

msg=`system "CRTDTAARA DTAARA(DUMMY) TYPE(*CHAR)"`
system "DLTDTAARA DTAARA(DUMMY)"
tmp_lib="${${msg#*"created in library "}::(-2)}2"
system "CRTSRCPF FILE(${tmp_lib}/QDDSPF) RCDLEN(132)"
system "CRTSRCPF FILE(${tmp_lib}/QCLSRC) RCDLEN(132)"   
system "CRTSRCPF FILE(${tmp_lib}/QCMDSRC) RCDLEN(132)"   
cur_path=`pwd`
system "CPYFRMSTMF FROMSTMF('${cur_path}/QDDSPF/GUIDE00F.PF') \
        TOMBR('/QSYS.LIB/${tmp_lib}.LIB/QDDSPF.FILE/GUIDE00F.MBR')"
system "CPYFRMSTMF FROMSTMF('${cur_path}/QCLSRC/V5R4M0/INSTALL_L.CLLE') \
        TOMBR('/QSYS.LIB/${tmp_lib}.LIB/QCLSRC.FILE/INSTALL_L.MBR')"
system "CPYFRMSTMF FROMSTMF('${cur_path}/QCLSRC/V5R4M0/INSTALLOC.CLLE') \
        TOMBR('/QSYS.LIB/${tmp_lib}.LIB/QCLSRC.FILE/INSTALLOC.MBR')"
system "CPYFRMSTMF FROMSTMF('${cur_path}/QCMDSRC/INSTALLOC.CMD') \
        TOMBR('/QSYS.LIB/${tmp_lib}.LIB/QCMDSRC.FILE/INSTALLOC.MBR')"
system "CPYFRMSTMF FROMSTMF('${cur_path}/QCMDSRC/INSTALL.CMD') \
        TOMBR('/QSYS.LIB/${tmp_lib}.LIB/QCMDSRC.FILE/INSTALL.MBR')"
system "CPYFRMSTMF FROMSTMF('${cur_path}/QCLSRC/V5R4M0/BOOTPUB400.CLLE') \
        TOMBR('/QSYS.LIB/${tmp_lib}.LIB/QCLSRC.FILE/BOOTSTRAP.MBR')"
system "CRTCLMOD MODULE(${tmp_lib}/BOOTSTRAP) SRCFILE(${tmp_lib}/QCLSRC) \
        SRCMBR(BOOTSTRAP) OUTPUT(*NONE)"
system "CRTPGM PGM(${tmp_lib}/BOOTSTRAP) MODULE(${tmp_lib}/BOOTSTRAP) \
        TEXT('PASERIE bootstrapper')"      
system "CALL PGM(${tmp_lib}/BOOTSTRAP) PARM('${cur_path}')"

