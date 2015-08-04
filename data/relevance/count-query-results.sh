#!/bin/bash

uri=$1
query=$2

echo -n $query","
curl --silent -XGET $uri/_count -d "{ \"query\": {\"match\":{\"_all\": \"$query\"}}}" | grep -oP "\"count.*?\d+" | grep -Po "\d+"
