#!/bin/sh

# Get the got root directory
ROOT_FOLDER=$(git rev-parse --show-toplevel)

# Switch to the Git scenrios directory
cd $ROOT_FOLDER/Git

#
# Copy the assets folder to all the scenarions folders
#
for folder in $(ls -d */);
do
    # Copy the assets folder
    cp -rf $ROOT_FOLDER/assets $folder/
done
