#!/bin/bash
uri=$1
json=$2
id=$(echo $json | jq -r '.id' )
curl --silent -XPUT "${uri}/{$id}" -d "${json}"
