# spark-gateway-k3s
[Source Code](https://github.com/alesbatalla/spark-gateway-k3s.git)

``` bash
sudo docker pull alesbatalla/spark-gateway-k3s:latest
sudo docker build --tag alesbatalla/spark-gateway-k3s:latest -f ./Dockerfile .
sudo docker run -it -p 21444:21444 -p 29739:29739 -p 21666:21666  -v /opt/cloudera:/opt/cloudera -v /usr/java/jdk1.8.0_232-cloudera:/usr/java/jdk alesbatalla/spark-gateway-k3s:latest 

export JAVA_HOME=/usr/java/jdk
export HADOOP_HOME=/opt/cloudera/parcels/CDH
export HADOOP_CONF_DIR=/current/hadoop-conf
export YARN_CONF_DIR=/current/yarn-conf
export SPARK_CONF_DIR=/current/spark-conf
export PATH=$PATH:/opt/cloudera/parcels/CDH/bin:$JAVA_HOME/bin

java -version
spark-shell

docker login -u alesbatalla docker.io
docker push alesbatalla/spark-gateway-k3s:latest
``` bash


edit
spark-default.properties

# Host IP
spark.driver.host 10.0.0.6
# Host port free
spark.driver.port 21444
# Host port free
spark.driver.blockManager.port 29739
# Host port free
spark.ui.port=21666
spark.app.name=Docker-spark
# Container IP
spark.driver.bindAddress 172.17.0.3











# Set the driver's bind address to the CDSW engine's IP
spark.driver.bindAddress 100.66.0.30
# Set overrideable application name to the CDSW engine's ID
spark.app.name=CDSW-y51zlqoxj8f2884h
# (SPARK-28150 Workaround) This is to make back to back spark context instantiation work on the same engine.
spark.kerberos.renewal.credentials=ccache
# Disable the RM proxy, so we can display the Spark live UI in CDSW.
spark.yarn.rmProxy.enabled=false
# Set the Spark UI to a port that is visible in the CDSW App Switcher.
spark.ui.port=20049
spark.ui.allowFramingFrom=http://cdsw.52.157.75.68.sslip.io
# Set default memory to 0.8 of CDSW engine size, max free 1GiB
spark.driver.memory=1525m
# Configure Spark to run a client-mode driver in this CDSW engine against the
# attached cluster.
spark.submit.deployMode=client
# Configure Spark to run a client-mode driver in this CDSW engine against
# the attached CDH/HDP cluster.
spark.driver.host 10.0.0.4
spark.driver.port 26563
spark.driver.blockManager.port 28667
# Extra configuration read from spark-defaults.conf
spark.executor.memory   2g
spark.executor.instances        3
spark.yarn.tags "Project Wine Pred"
## For CML #
#spark.hadoop.fs.s3a.metadatastore.impl=org.apache.hadoop.fs.s3a.s3guard.NullMetadataStore
#spark.yarn.access.hadoopFileSystems=s3a://mlamairesse/wine_dataset/
#spark.hadoop.fs.s3a.delegation.token.binding=
################################################################################################################

Para el nodo concreto
export JAVA_HOME=/usr/java/jdk1.8.0_232-cloudera/
export HADOOP_HOME=/opt/cloudera/parcels/CDH
export HADOOP_CONF_DIR=/home/rancher/spark-gateway-k3s/hadoop-conf
export YARN_CONF_DIR=/home/rancher/spark-gateway-k3s/yarn-conf
export SPARK_CONF_DIR=/home/rancher/spark-gateway-k3s/spark-conf
export PATH=$PATH:/opt/cloudera/parcels/CDH/bin:$JAVA_HOME/bin

java -version
spark-shell



spark.driver.host 10.0.0.6
spark.driver.port 21444
spark.driver.blockManager.port 29739
spark.ui.port=21666
