FROM centos:7

MAINTAINER domeos

RUN yum install -y openssh openssh-clients

COPY ./shellinaboxd /opt/shellinaboxd

expose 4200

CMD /opt/shellinaboxd -t -s /domeos:SSH:127.0.0.1
