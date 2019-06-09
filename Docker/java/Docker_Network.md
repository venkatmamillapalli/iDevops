# Docker Network

* Cnm/cni gives network to container

* Lib network
* Sand box
* Service discovery

```
docker network ls
docker network inspect
docker network create -d bridge --subnet “10.0.0.0/16” --gateway 10.0.0.1 --attachable netname
docker network connect netname c1
docker network inspect netname
```
If u want to disconnect a container from a network use disconnect command
```
#docker container exec -it c1
```
* Docker container can map into multiple networks 
* Portainer docker
* Restart policy
* Events in do
