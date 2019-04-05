sudo apt-get -y  update 
sudo apt-get install -y apt-transport-https curl
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo touch  /etc/apt/sources.list.d/kubernetes.list
sudo chmod 777  /etc/apt/sources.list.d/kubernetes.list
echo deb https://apt.kubernetes.io/ kubernetes-xenial main > /etc/apt/sources.list.d/kubernetes.list
sudo apt-get -y update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

