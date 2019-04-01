#!/bin/bash

# errors should break the execution
set -e

# Download gtfs stop data

URL="router:8082"
SERVICE="estonia/"
NAME="router-estonia.zip"
cd $DATA
curl -sS -O --fail $URL$SERVICE$NAME
unzip -o $NAME

echo '##### Loaded GTFS data'
