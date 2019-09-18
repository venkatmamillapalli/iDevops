## Creating users
Command to create users in k8s

```
 openssl genrsa -out developer.key 2048
```
creating csr(certificate req for developer)
```
openssl req -new -key developer.key -out developer.csr -subj "/CN=developer/O=ventech"
```
Sign the certificate by cluster for this you need to find the location of kubeernetes where its keeps the all the certificates of its cluster
