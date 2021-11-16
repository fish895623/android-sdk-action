#!/bin/sh -l
# TODO going to fix install platform, sdkversion
echo "Hello $1"
time=$(date)
echo "::set-output name=version::$version"
