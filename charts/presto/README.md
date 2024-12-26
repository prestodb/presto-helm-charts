# Helm Chart for Presto
[Presto](https://prestodb.io) is a Fast and Reliable SQL Engine for Data Analytics and the Open Lakehouse.

## Introduction
This chart bootstraps a [Presto](https://prestodb.io) on a [Kubernetes](https://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites
- Kubernetes 1.30+
- Helm 3

## Presto charts Helm repository
Helm chart repository is a location where packaged charts can be stored and shared.

Use the following command to add Presto charts repository to Helm client configuration:
```shell
helm repo add presto https://prestodb.github.io/presto-helm-charts
```

## Installing the Chart
Install the chart with `my-presto` release name:
```shell
helm install my-presto presto/presto
```

## Uninstalling the Chart
Uninstall `my-presto` release:
```shell
helm uninstall my-presto
```

## Configuration
Refer default `values.yaml` file of the chart for all the possible configuration properties:
```shell
helm show values presto/presto
```

## Presto deployment modes
The chart supports three Presto deployment modes: single, cluster and highly available cluster.

### Single
Minimal Presto deployment, where single pod acts as Coordinator and Worker.
This mode can be used for experimentation and testing purposes in environments with limited resources.

The following command installs Presto in **single** mode:
```shell
helm install my-presto presto/presto --set mode=single
```

### Cluster
Standard Presto deployment with one Coordinator and multiple Workers.
The chart deploys Presto in cluster mode by default.

The following command installs Presto in **cluster** mode with 3 workers:
```shell
helm install my-presto presto/presto --set mode=cluster --set worker.replicas=3
```

### Highly Available Cluster
Highly available Presto deployment with Resource Manager and multiple Coordinators and Workers.
This mode allows to avoid single point of failure for coordinator and mitigate coordinator bottleneck in high load Presto clusters.

The following command installs Presto in **ha-cluster** mode with 2 coordinators and 3 workers:
```shell
helm install my-presto presto/presto --set mode=ha-cluster --set coordinator.replicas=2 --set worker.replicas=3
```
