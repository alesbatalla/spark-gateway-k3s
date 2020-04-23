# Dockerfile
FROM centos:centos7
#RUN yum -y update && \
#	 yum -y install rh-python36 && \
WORKDIR /current
VOLUME /current
VOLUME /opt/cloudera
VOLUME /usr/java/jdk