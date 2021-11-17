#!/bin/sh -l
# TODO going to fix install platform, sdkversion
echo "$1"
version=$1

sh -c '/commandlinetools/cmdline-tools/bin/sdkmanager --sdk_root=/sdk "platforms;android-$version"'
echo "SDK installed"
