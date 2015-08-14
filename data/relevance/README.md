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
QUERY2=$(./expand-query.sh localhost:9200/pinterest/pin/_search "$QUERY")
...
```

# Addendum

The actual commands used for this study.

```

curl -XPUT localhost:9200/pinterest -d @pin-mappings.json

cat ../pinterest/pinDataHeader.csv ../pinterest/samples/level1pins/**/pinData.csv | csvcut -c id,url,description,title,image,image60,image236,likes,repins,board,pin_join | csvjson --stream | parallel --eta -j90% -n1 ./add-doc.sh 'http://localhost:9200/pinterest/pin/'

head -n13 final-query-sample.txt | parallel --eta -j2 ./search_expanded.sh localhost:9200/pinterest/pin {} "| python -mjson.tool >results/expanded-{}.json"

# Add query results to ../turk/image-relevance-basic-basic1.json, manually based on this output:
find results/*json | parallel "echo {}; cat {} | jq -s \".[].hits.hits[]._id | tonumber\" | jq -sc ."
# DL Images
cat results/* | grep -P "\"image\d" | grep -oP "https.*jpg" | parallel --eta -n100 -j90% --delay 10 wget -i - -x --directory-prefix=/home/ec2-user/crowdy-backend/public/images/
# Load Pins to DB
cat results/expanded-*.json | jq -s . | jq ".[] | .hits.hits[]._source" | jq -s "." | perl -pe "s:s-media-cache:crowdycrowdy.com/images/s-media-cache:g" >pinsForCrowdy.json
cd ~/crowdy-backend/
coffee scripts/loadPinsToMongo.coffee --pinData ~/dissertation/data/relevance/pinsForCrowdy.json
# Add Hit to DB
coffee scripts/saveJSONtoMongo.coffee --model hit --json ~/dissertation/data/turk/image-relevance-basic-basic1.json
# Create hit for Amazon
vim ~/dissertation/data/turk/rel-basic-task1.json
# Post to sandbox

```

And to sample for the teaching intervention task, I expanded search results size to 100 in search_expanded.sh, and then

```
mkdir results-tmp
head -n13 final-query-sample.txt | parallel --eta -j2 ./search_expanded.sh localhost:9200/pinterest/pin {} "| python -mjson.tool >results-tmp/{}.json"

ls . | parallel grep "image236" {} '|' tail -n +31'|' perl -pe "\"s/^.*?(http.*jpg).*$/<img src='\1' \/>/\"" '>~/crowdy-backend/public/teaching-sample/{.}.html'
rm -rf results-tmp
```

This added html files of images accessible from crowdycrowdy.com/teachingsample/QUERY.html, which can be reviewed manual.
