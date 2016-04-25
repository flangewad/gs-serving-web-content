#!/bin/bash

set -e -x
export TERM=${TERM:-dumb} # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd source-code/complete
./gradlew build
cf login -a api.run.pivotal.io -u kmoulang@pivotal.io -o pivotallabs -s Beach-London
popd





