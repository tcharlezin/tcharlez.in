#!/bin/bash

env GOOS=linux CGO_ENABLED=0 GOARCH=amd64 go build -o site ./cmd/web
docker build --platform linux/x86_64 -f site.dockerfile -t tcharlezin/site:1.0.0 .
docker push tcharlezin/site:1.0.0
rm site