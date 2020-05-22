# HIVE_AUX_JARS_PATH={{HIVE_AUX_JARS_PATH}}
# JAVA_LIBRARY_PATH={{JAVA_LIBRARY_PATH}}
export HADOOP_CONF_DIR="${HADOOP_CONF_DIR:-"$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"}"
HBASE_HIVE_DEFAULT_JAR=$(find /usr/lib/hive/lib -name hive-hbase-handler-*.jar 2> /dev/null | tail -n 1),$(sed "s: :,:g" <<< $(find /usr/lib/hbase -regextype posix-egrep -regex "/usr/lib/hbase/(hbase|hbase-client|hbase-server|hbase-protocol|hbase-common|hbase-hadoop-compat|hbase-hadoop2-compat|(lib/htrace-core.*)).jar" 2> /dev/null))
HIVE_AUX_JARS_PATH=$([[ -n $HIVE_AUX_JARS_PATH ]] && echo $HIVE_AUX_JARS_PATH,)$( ([[ ! '/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hive/lib/hive-hbase-handler-3.1.2000.7.0.3.0-79.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-hadoop-compat.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/lib/htrace-core.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-client.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-hadoop2-compat.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-server.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-common.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-protocol.jar' =~ HIVE_HBASE_JAR ]] &&  echo /opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hive/lib/hive-hbase-handler-3.1.2000.7.0.3.0-79.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-hadoop-compat.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/lib/htrace-core.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-client.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-hadoop2-compat.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-server.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-common.jar,/opt/cloudera/parcels/CDH-7.0.3-1.cdh7.0.3.p0.1635019/lib/hbase/hbase-protocol.jar) || echo ${HBASE_HIVE_DEFAULT_JAR:-}),$(find /usr/share/java/mysql-connector-java.jar 2> /dev/null),$(find /usr/share/cmf/lib/postgresql-*jdbc*.jar 2> /dev/null | tail -n 1),$(find /usr/share/java/oracle-connector-java.jar 2> /dev/null)
export HIVE_AUX_JARS_PATH=$(echo $HIVE_AUX_JARS_PATH | sed 's/,,*/,/g' | sed 's/^,//' | sed 's/,$//')
export HIVE_OPTS="${HIVE_OPTS} --hiveconf hive.query.redaction.rules=${HIVE_CONF_DIR}/redaction-rules.json --hiveconf hive.exec.query.redactor.hooks=org.cloudera.hadoop.hive.ql.hooks.QueryRedactor"
export HADOOP_CLIENT_OPTS="-Xmx2147483648 -Djava.net.preferIPv4Stack=true $HADOOP_CLIENT_OPTS"
