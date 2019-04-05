#!/bin/bash
mkdir -p /data/spark/recovery
mkdir -p /data/spark/data
mkdir -p /data/spark/work
chown -R spark /data
export SPARK_HOME=/opt/spark/
export SPARK_DIST_CLASSPATH=$(/opt/hadoop/bin/hadoop classpath)
export HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop
export YARN_CONF_DIR=/opt/hadoop/etc/hadoop
if [ $MODE = "master" ]; then
   sudo -Eu spark $SPARK_HOME/sbin/start-master.sh
else
   sudo -Eu spark $SPARK_HOME/sbin/start-slave.sh 172.18.100.50:7077
fi
