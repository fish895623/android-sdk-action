#!/bin/sh -l
# TODO going to fix install platform, sdkversion
time=$(date)
/commandlinetools/cmdline-tools/bin/sdkmanager --sdk_root=/sdk "platforms;android-$version"
echo "SDK installed"
