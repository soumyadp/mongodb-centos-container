# mongodb-docker-container
A docker container running MongoDB v4.0.

Assumptions: Docker installed and running on your local host

# Build
You can either clone the repository and build it from your local path like this:
docker build -t mongo /path/to/Dockerfile

docker build https://github.com/soumyadp/mongodb-docker-container


# Run
Assuming you have docker isntalled, execute these commands to run the container and enter it's shell:

docker run -ti -d -p 27017:27017 -p 80:80 --name MDB -v /c/Users/Soumyadeep/MDB_Data:/src cloudera/quickstart /usr/bin/docker-quickstart

docker exec -ti CDH /home/cloudera/cloudera-manager --express
