#!/bin/bash

# Update the Patch Version
#awk -F '=' '/PATCH_VERSION/{$2=$2+1}1' OFS='=' version > version.new
awk -F '.' '/TAG/{$3=$3+1}1' OFS='.' .env > version
cp version .env
cat version

# the release number should match build.sbt version number
source ./version

DOCKER_REGISTRY_NAME="snilloc"
DOCKER_IMAGE_APP_NAME="requestbin"
DOCKER_IMAGE_TAG="${TAG}"

# Build the base_os image using cache if possible
# Do this in a sub-dir that's empty to keep it as light as possible
DOCKER_IMAGE_FULL_NAME="${DOCKER_REGISTRY_NAME}/${DOCKER_IMAGE_APP_NAME}:${DOCKER_IMAGE_TAG}"
echo "Building Image: ${DOCKER_IMAGE_FULL_NAME}"

# Build the RequestBin image with no-cache to ensure it's clean
docker build --no-cache --rm -t="${DOCKER_IMAGE_FULL_NAME}"  . -f Dockerfile
