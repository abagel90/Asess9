#!/bin/bash

#Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

#Network settings
docker network create traefik-network
docker network create keycloak-network

#Copy export bashrc
cat Asess9/9/environment_variables >> ~/.bashrc
source ~/.bashrc

cd Asess9/9/
docker compose -f docker_keycloak_postgresql_letsencrypt.yml -p keycloak up -d
