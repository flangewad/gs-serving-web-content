#!/bin/bash

set -e -x
export TERM=${TERM:-dumb} # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd source-code/
pwd
ls -la
git --no-pager show -s --format='%an <%ae>'
popd

cp source-code/complete/build/libs/gs-serving-web-content-0.1.0.jar package
cp source-code/complete/manifest.yml package
