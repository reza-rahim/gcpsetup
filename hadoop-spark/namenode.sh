!/bin/bash
export HADOOP_HOME=/opt/hadoop/
if [ ! -d /data/dfs/name ]; then
      mkdir -p /data/dfs/data /data/dfs/name /data/dfs/namesecondary
      $HADOOP_HOME/bin/hdfs namenode -format
fi
nohup $HADOOP_HOME/bin/hdfs secondarynamenode &
nohup $HADOOP_HOME/bin/hdfs namenode &
