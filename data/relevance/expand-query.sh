# Returns the raw title + description text from the top N results.
# This can be used as an expanded query for a second search.
uri=$1
query=$2
# Expanding from the text of the top 20 results
results=20

curl --silent -XGET $uri/_search -d "{ \"size\": $results, \"query\": {\"match\":{\"_all\": \"$query\"}}}" |\
       	jq -j '.hits.hits[]._source | "\(.title) \(.description) "' |\
	# remove newlines
       	tr -d '\n' |\
	# Replace non word/numeral digits with spaces
       	perl -pe "s/[^\w\d]+/ /g" |\
	# truncate at 4090 words, just short of the max_clause_count
	perl -pe "s/(?:.*? ){4090}(.*$)/\1/"
