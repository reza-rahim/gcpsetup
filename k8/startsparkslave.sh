
mkdir -p /data/spark/recovery
mkdir -p /data/spark/data
mkdir -p /data/spark/work
export SPARK_HOME=/opt/spark/
export SPARK_DIST_CLASSPATH=$(/opt/hadoop/bin/hadoop classpath)
export HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop
export YARN_CONF_DIR=/opt/hadoop/etc/hadoop
$SPARK_HOME/sbin/start-slave.sh 172.18.50.1:7077

