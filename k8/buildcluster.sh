#!/bin/bash

export count=3
export IP=172.18.10
export type=reza-kubeadm
export disk=200GB
export instance=n1-standard-4

for ((i=1; i<=$count; i++));
do
printf " building the $type-$i\n"
gcloud compute --project=central-beach-194106 instances create $type-$i --zone=us-east1-b --machine-type=$instance --subnet=reza-subnet --private-network-ip=$IP.$i --network-tier=PREMIUM --maintenance-policy=MIGRATE --service-account=319143195410-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --image=ubuntu-1804-bionic-v20190404 --image-project=ubuntu-os-cloud --boot-disk-size=$disk  --boot-disk-type=pd-standard --boot-disk-device-name=reza-kubeadm-$i &
done
