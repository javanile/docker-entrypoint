FROM oraclelinux:7-slim

RUN yum update -y && yum install -y procps && yum clean all

COPY *.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
