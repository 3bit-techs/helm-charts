# cp-schema-registry

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for Confluent Schema Registry on Kubernetes

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/cp-schema-registry
```

## Configuration
```console
helm show values 3bit-techs/cp-schema-registry
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/cp-schema-registry
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configurationOverrides | object | `{}` |  |
| customEnv | object | `{}` |  |
| heapOptions | string | `"-Xms512M -Xmx512M"` |  |
| image | string | `"confluentinc/cp-schema-registry"` |  |
| imagePullPolicy | string | `"IfNotPresent"` |  |
| imagePullSecrets | string | `nil` |  |
| imageTag | string | `"5.5.0"` |  |
| jmx.port | int | `5555` |  |
| kafka.bootstrapServers | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| prometheus.jmx.enabled | bool | `true` |  |
| prometheus.jmx.image | string | `"solsson/kafka-prometheus-jmx-exporter@sha256"` |  |
| prometheus.jmx.imagePullPolicy | string | `"IfNotPresent"` |  |
| prometheus.jmx.imageTag | string | `"6f82e2b0464f50da8104acd7363fb9b995001ddff77d248379f8788e78946143"` |  |
| prometheus.jmx.port | int | `5556` |  |
| prometheus.jmx.resources | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| servicePort | int | `8081` |  |
| tolerations | list | `[]` |  |
