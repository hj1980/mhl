#!/usr/bin/env bash

# Exit the script with an error immediately if any individual command fails
set -e

# This will grab the file silently, and fail if it returns an error:
# curl --silent --fail http://mhl.nsw.gov.au/data/realtime/timeseries/SYDDOW.WaveHeight.csv.dat.txt

# This will numerically sort the data based on the fourth column in reverse order, using a comma as a seperator
# sort -n -r -t , -k 4

# This returns only the first row
# head -n 1

echo "The largest wave was $(curl --silent --fail http://mhl.nsw.gov.au/data/realtime/timeseries/SYDDOW.WaveHeight.csv.dat.txt | sort -n -r -t , -k 4 | head -n 1)"
