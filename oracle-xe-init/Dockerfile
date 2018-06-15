FROM oracle-xe-blank

COPY oracle-xe.rsp /root/tmp/oracle-xe.rsp
RUN ["/etc/init.d/oracle-xe", "configure", "responseFile=/root/tmp/oracle-xe.rsp"]
