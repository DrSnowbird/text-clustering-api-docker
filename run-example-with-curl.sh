#!/bin/bash -x

dataset_url_test="http%3A%2F%2F192.168.0.127%3A18080%2Fjetty_base%2Fwebapps%2Fdata%2Ftext%2Fabcnews-mini-text.csv"

dataset_url=${1:-$dataset_url_test}

curl -X POST   "http://0.0.0.0:8180/unguided_cluster?dataset=${dataset_url}&no_of_clusters=30&ext=csv&col=headline_text"   -H 'cache-control: no-cache'   -H 'postman-token: 2a487c93-517d-8e51-dfaa-7c41b4cfc02b'
