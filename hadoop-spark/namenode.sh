!/bin/bash
export HADOOP_HOME=/opt/hadoop/
if [ ! -d /data/dfs/name ]; then
      mkdir -p /data/dfs/data /data/dfs/name /data/dfs/namesecondary
      $HADOOP_HOME/bin/hdfs namenode -format
fi
$HADOOP_HOME/bin/hdfs secondarynamenode &
$HADOOP_HOME/bin/hdfs namenode
