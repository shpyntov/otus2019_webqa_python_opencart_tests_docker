#!/bin/bash

docker build -t opencart_tests .
docker run -e PYTEST_ADDOPTS="--executor=selenoid --url=https://demo.opencart.com" opencart_tests
docker system prune -f
docker rmi `docker images -a | grep opencart_tests | awk -F ' ' '{print $3}'`
