# Name space

# C-Groups
* its used to set memory for each container

# Docker file
[Dockerfile](https://docs.docker.com/engine/reference/builder/#add)


* ADD  ADD source/source /destination
* ENV  ENV key=value
* VOLUME  /usr/local/tomcat  (A saparate volume is created for this folder)
* Dockerigrone file


(To build java application)
```
java -jar 
```
# Docker commands

```
docker image ls
docker image build -t name.0

docker container run --name venkat -d -p 80:8080 imagename.0
docker container exec containerid
docker  image inspect
docker volume inspect
docker volume rm 

```

--env command used to change anything while running containers
--arg command used  to change anything while building containers

# Docker Container Backup

## Volumes Concept
* Docker Volume creation
Create the volume for importent folder by mentioning VOLUME /path in docker file

or while using someones image

```
docker container run -v /container/folder/path:/destination/path -P -d imagename

```

* if u mention Volume in dockerfile every time new volume is created while using -v commend in one volume every container data saved.

# Docker Drivers

* Volume Drivers

    block storage
    blobstorage
    file storage
 these are only volumes

 this for either using volumes or not 
two popular
    aufs => debian/ubuntu
    overlay2 => rhel,ubuntu