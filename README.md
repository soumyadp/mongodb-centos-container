# mongodb-docker-container
A docker container running MongoDB v4.0. MongoDB officially doesnt provide a CentOS based container running the widely popular NoSQL DB. So, I am sharing one with you.

Assumptions: Docker installed and running on your local host

# Build
You can either clone the repository and build it from your local path like this:

docker build -t mongo-centos:latest
docker build https://github.com/soumyadp/mongodb-centos-container -t mongo-centos:latest

# Run
Assuming you have docker isntalled, execute these commands to run the container and enter it's shell:

docker run -ti -d -p 27017:27017 -p 80:80 --name MDB mongo-centos
docker exec -ti MDB /bin/bash
