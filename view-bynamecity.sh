#!/bin/bash

source config.sh

URL=http://$HOST:$PORT/$DATABASE/_design/cities/_view/bynamecity

echo "Playing around the group_level parameter"

for i in {0..2}
do
  echo "group_level=$i"
  read -p "Press enter to continue..."
  curl -X GET $URL?group_level=$i | jshon -S
done
