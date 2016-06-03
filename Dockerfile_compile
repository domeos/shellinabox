FROM centos:7

MAINTAINER domeos

RUN yum install -y git openssl-devel pam-devel zlib-devel autoconf automake libtool make && \
    mkdir -p /opt/shellinabox && cd /opt/shellinabox

COPY ./shellinabox /opt/shellinabox

WORKDIR /opt/shellinabox

RUN autoreconf -i && ./configure && make

expose 4200

CMD ./shellinaboxd -t -s /domeos:SSH:127.0.0.1
