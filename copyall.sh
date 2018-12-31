#!/bin/bash
export GOOS=linux
export CGO_ENABLED=0

cd accountservice;go get;go build -o accountservice-linux-amd64;echo built `pwd`;cd ..

// NEW, builds the healthchecker binary
cd healthchecker;go get;go build -o healthchecker-linux-amd64;echo built `pwd`;cd ..

export GOOS=darwin

// NEW, copies the healthchecker binary into the accountservice/ folder
cp healthchecker/healthchecker-linux-amd64 accountservice/

docker build -t someprefix/accountservice accountservice/

docker service rm accountservice
docker service create --name=accountservice --replicas=1 --network=my_network -p=3535:3535 someprefix/accountservice