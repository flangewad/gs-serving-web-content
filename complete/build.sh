#!/bin/bash

set -e -x
export TERM=${TERM:-dumb} # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd source-code/complete
./gradlew build
mkdir package
cp build/libs/gs-serving-web-content-0.1.0.jar /tmp/build/put/source-code/complete/build/libs/
popd





