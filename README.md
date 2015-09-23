# Sonar Qube Docker Image

## Environment

* CentOS 7
* Piwik 2.14.3

## Requirements

* MySQL Server 5.6 Docker container
* Minimal [SQL setup](mysql.sql)

## User Guide

### Automated setup

* Use the included docker compose file and run the following command from within this project in order to create and start required containers:
```
docker-compose up -d
```

### Manual setup

* Make sure the DB container is up and running and the required Piwik DB and user have been created (see [SQL setup](mysql.sql))
* Cd into this project and build the image:
```
docker build --rm --tag <user>/<piwik image name> .
```

* Create and start a new Piwik container:
```
docker run -d --name <piwik container name> \
--link <db container name> \
-p 80:80 \
<user>/<piwik image name>
```

* Go to the Piwik setup page and follow the instructions:
```
http://<docker host>/piwik
```
