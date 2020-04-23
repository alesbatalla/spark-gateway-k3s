# spark-gateway-k3s
[Source Code](https://github.com/alesbatalla/spark-gateway-k3s.git)

``` bash
docker pull alesbatalla/spark-gateway-k3s:latest
docker build --tag alesbatalla/spark-gateway-k3s:latest -f ./Dockerfile .
docker run -it -v /current:$PWD -v /opt/cloudera:/opt/cloudera -v /etc/hadoop/conf:/etc/hadoop/conf -v /etc/hive/conf.cloudera.hive:/etc/hive/conf -v /etc/spark/conf.cloudera.spark_on_yarn:/etc/spark/conf -v /usr/java/jdk1.8.0_232-cloudera:/usr/java/jdk alesbatalla/spark-gateway-k3s:latest 

export JAVA_HOME=/usr/java/jdk
export PATH=$PATH:/opt/cloudera/parcels/CDH/bin:$JAVA_HOME/bin

java -version
spark-shell

docker login -u alesbatalla docker.io
docker push alesbatalla/spark-gateway-k3s:latest
``` bash
