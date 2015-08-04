#!/bin/bash

uri=$1
query=$2

echo -n $query","
expanded=$(./expand-query.sh $uri $query)
curl --silent -XGET $uri/_count -d "{ \"query\": {\"match\":{\"_all\": \"$expanded\"}}}" | grep -oP "\"count.*?\d+" | grep -Po "\d+"
