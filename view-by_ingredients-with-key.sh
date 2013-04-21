#!/bin/bash

source config.sh

curl -X GET http://$HOST:$PORT/$DATABASE/_design/recipes/_view/by_ingredients?key=%22red%20wine%22 | jshon -S

