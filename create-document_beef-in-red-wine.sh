#!/bin/bash

source config.sh

curl -X POST -H 'Content-type: application/json' \
  -d @beef-in-red-wine.js \
  http://$HOST:$PORT/$DATABASE | jshon -S

