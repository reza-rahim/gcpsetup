
export type=reza-hadoop
export count=4

for ((i=1; i<=$count; i++));
do
gcloud compute --project "central-beach-194106" ssh --command  'git clone https://github.com/reza-rahim/gcpsetup.git'  --zone "us-east1-b" "$type-$i"
gcloud compute --project "central-beach-194106" ssh --command  'sudo bash ./gcpsetup/hadoop-spark/install.sh'  --zone "us-east1-b" "$type-$i" &
done

