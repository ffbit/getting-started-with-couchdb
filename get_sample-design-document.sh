#!/bin/bash

source config.sh

curl -X GET http://$HOST:$PORT/$DATABASE/_design/recipes | jshon -S

