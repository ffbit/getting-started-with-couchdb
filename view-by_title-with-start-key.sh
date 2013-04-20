#!/bin/bash

source config.sh

curl -X GET http://$HOST:$PORT/$DATABASE/_design/recipes/_view/by_title?startkey=%22Apricot%22 | jshon -S

