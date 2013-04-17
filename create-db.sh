#!/bin/bash

source config.sh

curl -X PUT http://$HOST:$PORT/$DATABASE | jshon -S

