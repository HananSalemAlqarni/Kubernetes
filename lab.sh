
Install and setup Docker
1- we should launch instance – ubuntu then connected to the terminal

sudo apt update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo docker  --version

THIS COMMAND TO USE DOCKER WITH OUT SUDO
sudo usermod -aG docker $USER
newgrp docker
docker  --version

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start
"https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
output->kubectl: OK
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version
git clone https://github.com/HananSalemAlqarni/Kubernetes.git
ls
cd Kubernetes
ls
kubectl create -f pod-defination.yml
kubectlget pods
kubectl get pods
kubectl get pods -o wide
kubectl describe pod my-first-pod

