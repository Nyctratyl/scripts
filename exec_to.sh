#/usr/bin/bash

docker exec -it $(docker container ls | grep $1 | head -n 1 | awk '{print $1}') $2
