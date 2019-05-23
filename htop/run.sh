#!/bin/bash
sudo docker build -t htop .
sudo docker run -it --network=my-ne --rm --pid=container:docker-nginx htop