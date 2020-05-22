# Dockerfile
FROM centos:centos7
#RUN yum -y update && \
#	 yum -y install rh-python36 && \
WORKDIR /current
#COPY hadoop-conf /current/hadoop-conf
#COPY hive-conf /current/hive-conf
#COPY yarn-conf /current/yarn-conf
#COPY spark-conf /current/spark-conf
VOLUME /opt/cloudera
VOLUME /usr/java/jdk
VOLUME /current
