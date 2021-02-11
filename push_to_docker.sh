#!/usr/bin/env bash

if [ -z "${VERSION}" ]
then
  echo "VERSION not set"
  exit -1
fi
echo "Version = ${VERSION}"

mkdir -p build/distributions/rest-o-rant-web
mkdir -p build/docker/webapp
cp -R src/main/webapp build/distributions/rest-o-rant-web
cp -R src/main/webapp build/docker/webapp

cp -R src/main/nginx build/docker/nginx

cp Dockerfile build/docker/Dockerfile

cd build/docker
docker build -t rbroker/rest-o-rant-web:${VERSION} .
docker login --username $DOCKER_USER --password $DOCKER_PASSWORD docker.io
docker push rbroker/rest-o-rant-web:${VERSION}
