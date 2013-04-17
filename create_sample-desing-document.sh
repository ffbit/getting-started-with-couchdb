#!/bin/bash

source config.sh

curl -X PUT -H 'Content-type: application/json' \
  -d @sample-desing-document.js \
 http://$HOST:$PORT/$DATABASE/_design/recipes | jshon -S

