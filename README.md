# Presto Helm Charts

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Repository for Presto Helm charts.

## Add Presto charts Helm repo
Use the following command to add Presto charts repository to Helm configuration:
```shell
$ helm repo add presto https://prestodb.io/presto-helm-charts
```

## Debugging chart templates
Use `helm template --debug` to render the chart templates locally, for example, to check correctness when Ingress is enabled:
```shell
$ helm template my-presto charts/presto --set ingress.enabled=true --debug
```

Use `helm install --dry-run --debug` to render the chart templates on a server side without creating resources.
The command simulates installation, which is useful to check if the chart and configuration are valid for a specific Kubernetes cluster:
```shell
$ helm install my-presto charts/presto --set ingress.enabled=true --dry-run --debug
```

## Running locally
[Minikube](https://minikube.sigs.k8s.io) can be used to deploy the chart and run Presto locally.
The following commands start minikube instance and open Kubernetes cluster dashboard in the default web browser:
```shell
$ minikube start --cpus=4 --memory=8g --addons=ingress --addons=ingress-dns
$ minikube dashboard
```
