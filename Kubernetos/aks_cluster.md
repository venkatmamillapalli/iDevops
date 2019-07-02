## AKS
* To configure kubectl to connect to your Kubernetes cluster, use the az aks get-credentials command. This command downloads credentials and configures the Kubernetes CLI to use them.

Azure CLI
```
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
az aks create --name kuber --resource-group k8s
az aks get-credentials --name <MY-CLUSTER-NAME> --resource-group <MY-RESOURCE-GROUP>
kubectl get componentstatus
```