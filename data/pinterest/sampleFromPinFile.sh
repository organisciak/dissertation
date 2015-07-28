#!/usr/bin/env bash

# Sample 1/1000s of pins from a Pinterest pin sitemap

sitemapurl=$1

curl --silent --show-error $sitemapurl | \
	zfgrep "x-default" | \
	perl -pe "s/.*href=\"(.*)\".*/\1/g" | \
	perl -ne "print if (rand() < 1/1000)"
