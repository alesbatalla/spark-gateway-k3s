# spark-gateway-k3s
[Source Code](https://github.com/alesbatalla/spark-gateway-k3s.git)

``` bash
docker pull alesbatalla/spark-gateway-k3s:latest
docker build --tag alesbatalla/spark-gateway-k3s:latest -f ./Dockerfile .
docker run -it -v /opt/cloudera:/opt/cloudera -v /usr/java/jdk1.8.0_232-cloudera:/usr/java/jdk alesbatalla/spark-gateway-k3s:latest 

export JAVA_HOME=/usr/java/jdk
export PATH=$PATH:/opt/cloudera/parcels/CDH/bin:$JAVA_HOME/bin

java -version
spark-shell

docker login -u alesbatalla docker.io
docker push alesbatalla/spark-gateway-k3s:latest
``` bash
