## Docker Compose

### What is docker Compose?
Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration

Compose works in all environments: production, staging, development, testing, as well as CI workflows. You can learn more about each case in Common Use Cases.

Using Compose is basically a three-step process:

Define your app’s environment with a Dockerfile so it can be reproduced anywhere.

Define the services that make up your app in docker-compose.yml so they can be run together in an isolated environment.

Run docker-compose up and Compose starts and runs your entire app.

Step 1 : install docker compose
(already installed on windows and mac with docker)
```
docker-compose -v
```
We can install docker compose  2 Ways
   1.  https://github.com/docker/compose/rel...
   2. Using PIP
```
    pip install -U docker-compose
```
Step 2 : Create docker compose file at any location on your system
```
   docker-compose.yml
```
Step 3 : Check the validity of file by command
```
    docker-compose config
```
Step 4 : Run docker-compose.yml file by command
```
   docker-compose up -d
```
Steps 5 : Bring down application by command
   ```
   docker-compose down
   ```
Scaling any service
```
docker-compose up -d --scale database=4
````