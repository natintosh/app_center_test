#!/usr/bin/env bash

if ["$APPCENTER_BRANCH" == "master"]; then
    echo "Master Branch"
fi

echo "Initializing Flutter Build"
source $HOME/.bash_profile
source $HOME/.profile
source .bashrc
echo "`pwd`"

cd ..
cd ..

ls
git clone -b stable https://github.com/flutter/flutter.git


if [ "$APPCENTER_BRANCH" == "master" ]; then
    echo "Master Branch"
fi

set -e
set -x

flutter build apk --release -v

echo "Build Complete"

echo "Moving build apk to release directory"

mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_