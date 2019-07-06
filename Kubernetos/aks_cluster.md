## AKS
* To configure kubectl to connect to your Kubernetes cluster, use the az aks get-credentials command. This command downloads credentials and configures the Kubernetes CLI to use them.

Azure CLI
```
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
az aks create --name kuber --resource-group k8s
az aks get-credentials --name <MY-CLUSTER-NAME> --resource-group <MY-RESOURCE-GROUP>
kubectl get componentstatus
```
* To run docker images on k8s cluster
```
kubectl run tomven --image mamillapalli/tomven

```
if u want to start ur image with two replicas
```
kubectl run tomven --image mamillapalli/tomven --replicas 2
```
After starting the container if u want to increse the replicas(i.e Containers)
```
kubectl scale deploy mamillapalli/tomven --replicas 2
```
### How to access a service running in Kubernetos cluster
There are twoo ways to accessinng the service

1)Port Forwording
 ```
    kubectl port-forward tomven-57566d7667-49fgb 8081:80
```
To see pod logs
```
kubectl  logs tomven-57566d7667-49fgb#podname
```
2)Service creation

```
kubectl expose deployment tomven --type NodePort --port 80
```