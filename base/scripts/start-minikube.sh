#!/bin/bash
#
# Start minikube with custom resource usage
#
set -o errexit
set -o nounset
set -o pipefail


#
# From minikube docs:
#   --cpus='2': Number of CPUs allocated to Kubernetes. Use "max" to use the maximum number of CPUs.
#   --disk-size='20000mb': Disk size allocated to the minikube VM (format: <number>[<unit>], where unit = b, k, m or g).
#   --memory='': Amount of RAM to allocate to Kubernetes (format: <number>[<unit>], where unit = b, k, m or g).
#                Use "max" to use the maximum amount of memory.
#
minikube \
  start \
  --cpus=max \
  --disk-size=30000mb \
  --memory=max
