#!/bin/bash
echo "##########Formatting code#########################################"
go fmt ./ && go vet ./
echo "##########Format the code successfully############################"
export CGO_ENABLED=0
export GOOS=windows
export GOARCH=amd64
echo "##########Compiling gva#######################################"
go build -o gva cmd/main.go
echo "##########Successfully compiled gva###########################"
echo "##########Initializing data using gva#########################"
./gva initdb
echo "##########Use gva to initialize data successfully#############"
echo "##########Deleting gva########################################"
rm -rf ./gva
echo "##########Deleting gva successfully###########################"
