
export type=reza-hadoop
export count=4

for ((i=2; i<=$count; i++));
do
gcloud compute --project "central-beach-194106" ssh --command  'sudo mkdir -p mkdir -p /data/dfs/data; sudo $HADOOP_HOME/bin/hdfs datanode '  --zone "us-east1-b" "$type-$i" &
gcloud compute --project "central-beach-194106" ssh --command  'sudo bash ./gcpsetup/hadoop-spark/startsparkslave.sh '  --zone "us-east1-b" "$type-$i" &
done

