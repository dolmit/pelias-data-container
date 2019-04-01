#!/bin/bash

# errors should break the execution
set -e

mkdir -p $DATA/openstreetmap
cd $DATA/openstreetmap

# Download osm data
curl -sS -O -L --fail http://download.geofabrik.de/europe/estonia-latest.osm.pbf

echo '##### Loaded OSM data'
