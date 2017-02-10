#!/bin/bash

# download the zipfile
[ -f 201608-citibike-tripdata.zip ] || curl -O https://s3.amazonaws.com/tripdata/201608-citibike-tripdata.zip

# unzip it to a csv file
unzip -p 201608-citibike-tripdata.zip > 201608-citibike-tripdata.csv
