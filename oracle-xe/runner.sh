#!/bin/bash

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora
/etc/init.d/oracle-xe start

trap 'trap - TERM; kill -s TERM -- -$$' TERM

tail -f /dev/null & wait

/etc/init.d/oracle-xe stop
