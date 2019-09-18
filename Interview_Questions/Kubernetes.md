## Kubernetes Interview Questions

### Service Account
When you (a human) access the cluster (for example, using kubectl), you are authenticated by the apiserver as a particular User Account (currently this is usually admin, unless your cluster administrator has customized your cluster). Processes in containers inside pods can also contact the apiserver. When they do, they are authenticated as a particular Service Account (for example, default).

### Types of Authentication
* Certificates
* Https AUth
* Barer tokens
* LDAP /oauth