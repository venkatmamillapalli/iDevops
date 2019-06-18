
## Master
* install docker 



follow this [insttall](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/#installing-kubeadm-kubelet-and-kubectl)

[Initializing your master](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)

To start using your cluster, you need to run the following as a regular user:
```
  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config
```

## Node

* Installing Docker

* 18.06 version docker

* Install kube admin

```
apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
apt-get update
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl
```

kubectl get node
kubects get pods -h
kubeadm join 192.168.0.8:6443 --token 9orej6.sgm1m1riyqltie0u --discovery-token-ca-cert-hashsha256:8606138f299a16f1495ac1005d5262ae117b1f6a2ceae9f5f05fa0f18d360396

* if u lost the kubeadm join command


kubeadm token create --print-join-command

[taints](https://banzaicloud.com/blog/k8s-taints-tolerations-affinities/)