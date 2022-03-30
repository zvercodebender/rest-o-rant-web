#!/usr/bin/env bash

export CLI_VERSION="10.0.0"
if [ -z "${VERSION}" ]
then
  echo "VERSION not set"
  exit -1
fi
echo "Version = ${VERSION}"


