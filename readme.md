# docker images for oracle database express edition 11 r2

Installation:
1. Make sure you have 2560m swap. You can set it up with:
touch swap.img
chmod 600 swap.img
dd if=/dev/zero of=/var/swap.img bs=1024k count=2000
mkswap /var/swap.img
swapon /var/swap.img
2. Accept license and download oracle installation archive, then extract and put rpm file into oracle-xe-blank folder as oracle-xe-11.rpm.
3. Build oracle-xe-blank image.
4. Edit oracle-xe.rsp file in oracle-xe-init folder with your settings (ports and password).
5. Build oracle-xe-init image with --shm-size=1536m option.
6. Build oracle-xe image.
7. Run container from oracle-xe image with --shm-size=1536m option and port and volume mappings.
e.g.
docker run -d --rm --name oracle-xe --shm-size=1536m
-p 1521:1521
-v ora_admin:/u01/app/oracle/admin -v ora_diag:/u01/app/oracle/diag -v ora_recovery:/u01/app/oracle/fast_recovery_area 
-v ora_data:/u01/app/oracle/oradata -v ora_oradiag:/u01/app/oracle/oradiag_oracle
oracle-xe
