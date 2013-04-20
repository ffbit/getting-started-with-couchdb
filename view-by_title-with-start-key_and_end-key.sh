#!/bin/bash

curl -X GET 'http://127.0.0.1:5984/recipes/_design/recipes/_view/by_title?startkey=%22Apricot%22&endkey=%22Beef%22'

