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
curl -XPUT localhost:9200/test -d @pin-mappings.json
```

Test if the mappings were properly entered with:

```
curl -XGET localhost:9200/test/_mapping
```

4. Add docs


