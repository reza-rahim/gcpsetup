
export type=reza-kubeadm
export count=3
export command="sudo kubeadm join 172.18.10.1:6443 --token ncvwr6.83v1wn15qkrhpom9 --discovery-token-ca-cert-hash sha256:49b3040debdaf53f370ab28bf2825ac9fef9031f52890cd75f8479f11d14e01c"


for ((i=2; i<=$count; i++));
do
gcloud compute --project "central-beach-194106" ssh --command  'sudo  kubeadm join 172.18.10.1:6443 --token ncvwr6.83v1wn15qkrhpom9 --discovery-token-ca-cert-hash sha256:49b3040debdaf53f370ab28bf2825ac9fef9031f52890cd75f8479f11d14e01c'  --zone "us-east1-b" "$type-$i"
done

