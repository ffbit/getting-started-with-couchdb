#!/bin/bash

source config.sh

curl -X GET http://$HOST:$PORT/$DATABASE/_design/cities/_view/bynamecity | jshon -S
