#!/bin/bash

source config.sh

curl -X PUT -H 'Content-type: application/json' \
  -d @cities-desing-document.js \
 http://$HOST:$PORT/$DATABASE/_design/cities | jshon -S
