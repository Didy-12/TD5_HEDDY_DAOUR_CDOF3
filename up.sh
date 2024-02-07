#!/bin/bash


docker network create my-tiny-network


docker run -d --name app --network my-tiny-network -p 8080:8080 td4_app:latest


docker run -d --name db --network my-tiny-network -v db-vol:/data postgres:14

