#!/bin/sh -l
# TODO going to fix install platform, sdkversion
echo "$1"
version=$1

/commandlinetools/cmdline-tools/bin/sdkmanager --sdk_root=/sdk "platforms;android-$1"
echo "SDK installed"
