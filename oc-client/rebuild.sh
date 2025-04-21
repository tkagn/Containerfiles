#! /bin/bash

IMAGE='localhost/oc-client'
echo -e "\033[0;33m  Removing ${IMAGE} \033[0;0m"

# Remove old image
podman rm ${IMAGE}
echo "\033[0;33m ${IMAGE} container removed \033[0;0m"

# Rebuild image
podman build --force-rm --squash-all -t ${IMAGE} .
echo -e "\e[1;32m ${IMAGE} rebuilt \e[0;0m"
