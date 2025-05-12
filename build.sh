#!/usr/bin/env bash

if [ -z "${VERSION}" ]
then
  echo "VERSION not set"
  exit -1
fi
echo "Version = ${VERSION}"

echo "Current DIR = `pwd`"
find . -name gradle -exec chmod +x {} +

./gradlew clean build
