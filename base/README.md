# spinnaker-config

Deploy Spinnaker on minikube

## Prereqs

- [minikube](https://minikube.sigs.k8s.io/)
- [kleat](https://github.com/spinnaker/kleat)
  - Latest release is outdated. Does not support Keel
  - Currently needs to be built from source
- [kubectl](https://kubernetes.io/docs/tasks/tools/)

## Instructions

1. Start minikube

```
./scripts/start-minikube.sh
```

2. Generate k8s resources from halconfig using kleat

```
kleat generate halconfig.yml kleat/
```

3. Apply k8s resources

```
kubectl apply --kustomize .
```

4. Wait for k8s resources to come up

```
kubectl --namespace spinnaker wait pods --all --for=condition=Ready --timeout=15m
```

5. Forward service ports to access Spinnaker UI/API

```
./scripts/port-forward.sh
```

6. Open the Spinnaker UI in the browser: http://localhost:9000

7. Access the Spinnaker API using: http://localhost:8084

## Cleanup

Stop and remove minikube

```
./scripts/stop-minikube.sh
```

## Troubleshooting

* If pod fails to start, try deleting it as a workaround
