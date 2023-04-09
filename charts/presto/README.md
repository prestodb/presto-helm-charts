# Helm Chart for Presto
[Presto](https://prestodb.io) is a Fast and Reliable SQL Engine for Data Analytics and the Open Lakehouse.

## Introduction
This chart bootstraps a [Presto](https://github.com/prestodb/presto) on a [Kubernetes](https://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites
- Kubernetes 1.23+
- Helm 3

## Installing the Chart
Install the chart with `my-presto` release name:
```shell
$ helm install my-presto charts/presto
```

## Uninstalling the Chart
Uninstall the chart with `my-presto` release name:
```shell
$ helm uninstall my-presto
```

## Debugging the Chart templates
Use `helm template --debug` to render the chart templates locally, for example to check correctness when Ingress is enabled:
```shell
$ helm template my-presto charts/presto --set ingress.enabled=true --debug
```

Use `helm install --dry-run --debug` to render the chart templates on a server side without creating resources.
It might be useful to check if the chart configuration generates valid Kubernetes resources.
```shell
$ helm install my-presto charts/presto --set ingress.enabled=true --dry-run --debug
```

---
## Running locally
[Minikube](https://minikube.sigs.k8s.io) can be used to deploy the chart and run Presto locally:
```shell
$ minikube start --cpus=4 --memory=8g --addons=ingress --addons=ingress-dns
$ minikube dashboard
```
