FROM oraclelinux

RUN ["yum", "-q", "-y", "reinstall", "glibc", "glibc-common"]
RUN ["yum", "-q", "-y", "install", "libaio", "mc", "bc", "net-tools"]
COPY oracle-xe-11.rpm /root/tmp/oracle-xe.rpm
ENV LANG="ru_RU.UTF-8"
RUN ["rm", "-f", "/etc/localtime"]
RUN ["ln", "-s", "/usr/share/zoneinfo/Europe/Moscow", "/etc/localtime"]
RUN ["rpm", "-ihv", "/root/tmp/oracle-xe.rpm"]
