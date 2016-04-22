#!/bin/bash

set -e -x
export TERM=${TERM:-dumb} # needed for Gradle: https://issues.gradle.org/browse/GRADLE-2634

./gradlew build
