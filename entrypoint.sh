#!/bin/sh -l
# TODO going to fix install platform, sdkversion
echo "::set-output name=version::$version"

sh -c '/commandlinetools/cmdline-tools/bin/sdkmanager --sdk_root=/sdk "platforms;android-$version"'
echo "SDK installed"
