#!/bin/bash

export count=3
export type=reza-kubeadm

for ((i=1; i<=$count; i++));
do
yes | gcloud compute --project=central-beach-194106 instances delete $type-$i --zone=us-east1-b &
done
