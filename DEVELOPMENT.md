# Development

This document describes development guidelines for Presto Helm charts.

## Running locally
[Minikube](https://minikube.sigs.k8s.io) can be used to deploy the chart and run Presto locally for testing purposes.

The following commands start minikube instance and open Kubernetes cluster dashboard in the default web browser:
```shell
minikube start --cpus=4 --memory=8g --addons=ingress --addons=ingress-dns
minikube dashboard
```

## Debugging chart templates

### Linting
Use `helm lint` to examine the chart by running a series of tests for potential issues or errors.
The command takes a path to the chart and validates that the chart is well-formed.

For instance, the following command validates Presto Helm chart with enabled Ingress:
```shell
helm lint charts/presto --set ingress.enabled=true
```

### Rendering templates
Use `helm template --debug` to render the chart templates locally. 

For example, the command below checks templates correctness with enabled Ingress:
```shell
helm template my-presto charts/presto --set ingress.enabled=true --debug
```

### Simulate installation
Use `helm install --dry-run --debug` to simulate the chart installation and print rendered templates.
The command generates manifests and sends them to the Kubernetes API server for verification.
It is useful to check if the chart and configuration are valid for a specific Kubernetes cluster.

The following command simulates Presto Helm chart installation with enabled Ingress:
```shell
helm install my-presto charts/presto --set ingress.enabled=true --dry-run --debug
```
