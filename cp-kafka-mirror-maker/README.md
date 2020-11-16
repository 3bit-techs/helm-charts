# cp-kafka-mirror-maker

![Version: 0.2.7](https://img.shields.io/badge/Version-0.2.7-informational?style=flat-square) ![AppVersion: 5.4.2](https://img.shields.io/badge/AppVersion-5.4.2-informational?style=flat-square)

A Helm chart for Confluent Kafka MirrorMaker on Kubernetes

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/cp-kafka-mirror-maker
```

## Configuration
```console
helm show values 3bit-techs/cp-kafka-mirror-maker
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/cp-kafka-mirror-maker
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| dudssource | dudssource@gmail.com | https://www.3bit.com.br/ |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| customEnv | object | `{}` |  |
| heapOptions | string | `"-Xms1024M -Xmx1024M"` |  |
| image | string | `"confluentinc/cp-kafka"` |  |
| imagePullPolicy | string | `"Always"` |  |
| imagePullSecrets | string | `nil` |  |
| imageTag | string | `"5.4.2"` |  |
| jmx.enabled | bool | `true` |  |
| jmx.port | int | `9998` |  |
| kafka.consumerConfig."bootstrap.servers" | string | `"localhost:9094"` |  |
| kafka.numStreams | string | `"1"` |  |
| kafka.producerConfig."bootstrap.servers" | string | `"localhost:9094"` |  |
| kafka.topicWhitelist | string | `".*"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| prometheus.jmx.image | string | `"solsson/kafka-prometheus-jmx-exporter@sha256"` |  |
| prometheus.jmx.imageTag | string | `"70852d19ab9182c191684a8b08ac831230006d82e65d1db617479ea27884e4e8"` |  |
| prometheus.jmx.port | int | `5556` |  |
| prometheus.jmx.resources | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"2Gi"` |  |
| servicePort | int | `8083` |  |
| tolerations | object | `{}` |  |
