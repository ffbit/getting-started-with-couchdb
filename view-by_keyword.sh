#!/bin/bash

source config.sh

curl -X GET http://$HOST:$PORT/$DATABASE/_design/recipes/_view/by_keyword?group_level=1 | jshon -S

