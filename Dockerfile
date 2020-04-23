# Dockerfile
FROM centos:centos7
RUN apt-get update
WORKDIR /current
VOLUME /current
VOLUME /opt/cloudera
VOLUME /etc/hadoop/conf
VOLUME /etc/hive/conf
VOLUME /etc/spark/conf