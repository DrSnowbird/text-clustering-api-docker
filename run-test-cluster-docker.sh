#!/bin/bash -x


if [ ! -s Text-Clustering-API ]; then
    git clone https://github.com/vivekkalyanarangan30/Text-Clustering-API
fi

# Open docker terminal and navigate to /path/to/Text-Clustering-API
docker build -t clustering-api .

MY_IP=`hostname -I|awk '{print $1}'`
echo "Access http://192.168.99.100:8180/apidocs/index.html from your browser [assuming you are on windows and docker-machine has that IP. Otherwise just use localhost]"

echo "--------------------------------------------------------------------"
echo "Access Swagger like Web API: http://${MY_IP}:8180/apidocs/index.html"
echo "--------------------------------------------------------------------"
docker run -it --name "Text-Clustering-API" -p 8180:8180 clustering-api

