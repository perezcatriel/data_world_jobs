#!/bin/sh

docker build -t my-mariadb .
docker run --name my-mariadb -e MYSQL_ROOT_PASSWORD=mypassword -d my-mariadb


