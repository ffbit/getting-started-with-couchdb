#!/bin/bash

source config.sh

curl -X POST -H 'Content-type: application/json' \
  -d @cities.js \
  http://$HOST:$PORT/$DATABASE/_bulk_docs | jshon -S

