
export type=reza-kubeadm
export count=3
export token=

gcloud compute --project "central-beach-194106" ssh --command  'bash gcpsetup/k8/kubemaster.sh'  --zone "us-east1-b" "$type-1"

