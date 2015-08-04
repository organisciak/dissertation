#!/bin/bash

uri=$1
query=$2
# Get top N results
results=30

expanded=$(./expand-query.sh $uri "$query")
curl --silent -XGET $uri/_search -d "{ \"size\": $results, \"query\": {\"match\":{\"_all\": \"$expanded\"}}}"
