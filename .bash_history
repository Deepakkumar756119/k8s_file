curl -fsSL https://get.docker.com -o install-docker.sh
sh install-docker.sh
docker --version
# For AMD64 / x86_64
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
# For ARM64
[ $(uname -m) = aarch64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-arm64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
kind --version
snap install kubectl --classic
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: worker
vim config.yml
kind cretae cluster --name mycluster --config config.yml
kind create cluster --name mycluster --config config.yml
kubectl get nodes
exit
kubectl get pods
kubectl get nodes
kubectl run --image nginx mynginx
kubectl get pods
kubectl get pods -o wide
kubectl describe pods mynginx | less
kubectl delete pods mynginx
kubectl get pods
kubectl run --image mysql mydb --env MYSQL_ROOT_PASSWORD=admin
kubectl get pods
kubectl exec -it mydb -- bash
kubectl get pods
kubectl delete pods mydb
kubectl get pods
exit
kubectl get nodes
kubectl get pods
vim pod-defination1.yml
kubectl apply -f pod-defination1.yml
vim pod-defination1.yml
kubectl apply -f pod-defination1.yml
kubectl get pods
kubectl get pods -o wide
kubectl delete -f pod-defination1.yml
kubectl get pods
vim pod-defination2.yml
ls
vim pod-defination2.yml
kubectl apply -f pod-defination2.yml
vim pod-defination2.yml
kubectl apply -f pod-defination2.yml
vim pod-defination2.yml
kubectl apply -f pod-defination2.yml
vim pod-defination2.yml
kubectl apply -f pod-defination2.yml
kubectl get pods
kubectl delete -f pod-defination2.yml
vim pod-defination3.yml
kubectl apply -f pod-defination3.yml
vim pod-defination3.yml
kubectl apply -f pod-defination3.yml
vim pod-defination3.yml
kubectl apply -f pod-defination3.yml
vim pod-defination3.yml
kubectl apply -f pod-defination3.yml
vim pod-defination3.yml
kubectl apply -f pod-defination3.yml
kubectl get pods
kubectl get nodes -o wide
kubectl get pod -o wide
kubectl delete -f pod-defination3.yml
git remote add origin https://github.com/Deepakkumar756119/k8s_file.git
git init
git add .
git commit -m "a"
git remote add origin https://github.com/Deepakkumar756119/k8s_file.git
git push -u origin master
exit
