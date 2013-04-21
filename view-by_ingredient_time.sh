#!/bin/bash

source config.sh

curl -X GET 'http://127.0.0.1:5984/recipes/_design/recipes/_view/by_ingredient_time?startkey=%5B%22red%20wine%22,0%5D&endkey=%5B%22red%20wine%22,150%5D' | jshon -S
