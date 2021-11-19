#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail


kubectl --namespace spinnaker port-forward service/deck 9000 &
kubectl --namespace spinnaker port-forward service/gate 8084 &

sleep 3

echo "Forwarding to Spinnaker UI: http://localhost:9000"
echo "Forwarding to Spinnaker API: http://localhost:8084"

wait
