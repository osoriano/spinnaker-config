#!/bin/bash
#
# Stop and delete minikube
#
set -o errexit
set -o nounset
set -o pipefail

minikube stop
minikube delete
