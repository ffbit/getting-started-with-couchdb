#!/bin/bash

source config.sh

curl -X DELETE http://$HOST:$PORT/$DATABASE | jshon -S

