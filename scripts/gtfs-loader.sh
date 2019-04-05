#!/bin/bash

# errors should break the execution
set -e

# Download gtfs stop data

URL="http://api.dev.peatus.ee/routing-data/v2/"
SERVICE="estonia/"
NAME="router-estonia.zip"
cd $DATA
curl -sS -O --fail $URL$SERVICE$NAME
unzip -o $NAME

echo '##### Loaded GTFS data'
