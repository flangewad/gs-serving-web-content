#!/bin/bash

set -e -x
export TERM=${TERM:-dumb} # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd source-code/complete
./gradlew build
popd

cp source-code/complete/build/libs/gs-serving-web-content-0.1.0.jar package
cp source-code/complete/manifest.yml package
