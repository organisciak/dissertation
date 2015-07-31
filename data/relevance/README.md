1. To install, follow repository instructions here: https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-repositories.html

Since the use of elasticsearch will be preprocessed, not for any production server, _do not_ add to bootup with chkconfig. We don't need it running all the time.

2. To start

```
service elasticsearch start
```

- To stop

```
service elasticsearch stop
```

3. Add mappings for pins and create index

This mostly lets us tell ElasticSearch to use a probabilistic relevance model.

```
curl -XPUT localhost:9200/pinterest -d @pin-mappings.json
```

Test if the mappings were properly entered with:

```
curl -XGET localhost:9200/pinterest/_mapping
```

4. Add docs

This uses csvkit to reformat a csv, keeping only pertinent fields and converting to JSON.
The `--stream` argument for csvjson make each row output as it's own newline separated document. The `add-doc.sh` bash script strips out the id to bash to curl as the doc id along the actual json doc. It uses `jq`, which is in yum.

```
csvcut -c 1,3,5,21 ../pinterest/taggingSample.csv | csvjson --stream | parallel ./add-doc.sh 'http://localhost:9200/pinterest/pin/'
```
5. To Query

```
QUERY="TEST"
curl -XGET 'http://localhost:9200/pinterest/pin/_search' -d "{ \"query\": {\"match\":{\"_all\": \"$QUERY\"}}}"
```

6. Query Expansion based on recursive search

```
QUERY2=$(curl --silent -XGET 'http://localhost:9200/pinterest/pin/_search' -d "{ \"query\": {\"match\":{\"_all\": \"$QUERY\"}}}" | jq -j '.hits.hits[]._source | "\(.title) \(.description) "' | tr -d '\n' | perl -pe "s/[^\w\d]+/ /g")
curl -XGET 'http://localhost:9200/pinterest/pin/_search' -d "{ \"query\": {\"match\":{\"_all\": \"$QUERY\"}}}"
```

_or_ 

```
QUERY2=$(./expand-query.sh localhost:9200/pinterest/pin/_search $QUERY)
...
```

