FROM centos:7.5.1804

MAINTAINER Soumyadeep

RUN echo -e "[mongodb-org-4.0]\nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/4.0/x86_64/\ngpgcheck=1\nenabled=1\ngpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" > /etc/yum.repos.d/mongodb-org-4.0.repo &&\
    yum install -y mongodb-org &&\
    yum clean all &&\
    mkdir -p /data/db &&\
    chown -R mongod:mongod /data/db

VOLUME ["/data/db"]

EXPOSE 27017

CMD ["/usr/bin/mongod", "--dbpath", "/data/db"]