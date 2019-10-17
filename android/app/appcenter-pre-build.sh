#!/usr/bin/env bash

if ["$APPCENTER_BRANCH" == "master"]; then
    echo "Master Branch"
fi

echo "Initializing Flutter Build"
#source $HOME/.bash_profile
#source $HOME/.profile
#source .bashrc
echo "`pwd`"

cd ..
cd ..

ls
export PATH=`pwd`/flutter/bin:$PATH


if [ "$APPCENTER_BRANCH" == "master" ]; then
    echo "Master Branch"
fi

set -e
set -x

flutter build apk --release --build-name=1.0.$APPCENTER_BUILD_ID --build-number=$APPCENTER_BUILD_ID -v

echo "Build Complete"

echo "Moving build apk to release directory"

mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_