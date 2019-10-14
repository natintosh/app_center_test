#!/usr/bin/env bash

if ["$APPCENTER_BRANCH" == "master"]; then
    echo "Master Branch"
fi

echo "Initializing Flutter Build"

echo "`pwd`"

cd ..
echo "`pwd`"
cd ..
echo "`pwd`"

echo $APPCENTER_BRANCH
echo $APPCENTER_SOURCE_DIRECTORY
echo $APPCENTER_BUILD_ID
echo $APPCENTER_OUTPUT_DIRECTORY
echo $APPCENTER_OUTPUT_DIRECTORY

if [ "$APPCENTER_BRANCH" == "master" ]; then
    echo "Master Branch"
fi

set -e
set -x

flutter build apk --release -v

echo "Build Complete"

echo "Moving build apk to release directory"

mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_