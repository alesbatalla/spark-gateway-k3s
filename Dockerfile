# Dockerfile
FROM centos:centos7
#RUN yum -y update && \
#	 yum -y install rh-python36 && \
WORKDIR /current
COPY hadoop-conf /current
COPY hive-conf /current
COPY yarn-conf /current
VOLUME /opt/cloudera
VOLUME /usr/java/jdk