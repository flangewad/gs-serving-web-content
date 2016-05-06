#!/bin/bash

set -e -x
export TERM=${TERM:-dumb} # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

pushd source-code/
git --no-pager show -s --format='%an <%ae>' > culprit
popd
curl -X https://maker.ifttt.com/trigger/build_failed/with/key/EPy2lKjIbdn1KUVI69n7S
