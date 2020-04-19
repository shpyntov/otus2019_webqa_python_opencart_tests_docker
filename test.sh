#!/bin/bash

docker build -t opencart_tests .
docker run opencart_tests https://demo.opencart.com
docker system prune -f
docker rmi `docker images -a | grep opencart_tests | awk -F ' ' '{print $3}'`
