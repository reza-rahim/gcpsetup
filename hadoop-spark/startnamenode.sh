
export type=reza-hadoop
export count=1

for ((i=1; i<=$count; i++));
do
gcloud compute --project "central-beach-194106" ssh --command  'sudo bash ./gcpsetup/hadoop-spark/namenode.sh'  --zone "us-east1-b" "$type-$i" &
gcloud compute --project "central-beach-194106" ssh --command  'sudo bash ./gcpsetup/hadoop-spark/startsparkmaster.sh'  --zone "us-east1-b" "$type-$i" &
done

