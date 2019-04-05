
export type=reza-kubeadm
export count=3

for ((i=1; i<=$count; i++));
do
gcloud compute --project "central-beach-194106" ssh --command  'git clone https://github.com/reza-rahim/gcpsetup.git'  --zone "us-east1-b" "$type-$i"
gcloud compute --project "central-beach-194106" ssh --command  'sh gcpsetup/k8/docker.sh'  --zone "us-east1-b" "reza-kubeadm-$i" &
gcloud compute --project "central-beach-194106" ssh --command  'sh gcpsetup/k8/kubeadm.sh'  --zone "us-east1-b" "reza-kubeadm-$i" &
done

