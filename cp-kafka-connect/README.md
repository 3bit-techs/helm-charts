# cp-kafka-connect

![Version: 0.1.2](https://img.shields.io/badge/Version-0.1.2-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A Helm chart for Confluent Kafka Connect on Kubernetes

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/cp-kafka-connect
```

## Configuration
```console
helm show values 3bit-techs/cp-kafka-connect
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/cp-kafka-connect
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | list | `[]` |  |
| annotations | object | `{}` |  |
| configurationOverrides."config.storage.replication.factor" | string | `"3"` |  |
| configurationOverrides."internal.key.converter" | string | `"org.apache.kafka.connect.json.JsonConverter"` |  |
| configurationOverrides."internal.value.converter" | string | `"org.apache.kafka.connect.json.JsonConverter"` |  |
| configurationOverrides."key.converter" | string | `"io.confluent.connect.avro.AvroConverter"` |  |
| configurationOverrides."key.converter.schemas.enable" | string | `"false"` |  |
| configurationOverrides."offset.storage.replication.factor" | string | `"3"` |  |
| configurationOverrides."plugin.path" | string | `"/usr/share/java,/usr/share/confluent-hub-components"` |  |
| configurationOverrides."status.storage.replication.factor" | string | `"3"` |  |
| configurationOverrides."value.converter" | string | `"io.confluent.connect.avro.AvroConverter"` |  |
| configurationOverrides."value.converter.schemas.enable" | string | `"false"` |  |
| cp-schema-registry.url | string | `""` |  |
| customEnv | object | `{}` |  |
| heapOptions | string | `"-Xms512M -Xmx512M"` |  |
| image | string | `"confluentinc/cp-kafka-connect"` |  |
| imagePullPolicy | string | `"IfNotPresent"` |  |
| imagePullSecrets | string | `nil` |  |
| imageTag | string | `"5.5.0"` |  |
| jmx.port | int | `5555` |  |
| kafka.bootstrapServers | string | `""` |  |
| livenessProbe | string | `nil` |  |
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
| secrets | string | `nil` |  |
| servicePort | int | `8083` |  |
| tolerations | list | `[]` |  |
| volumeMounts | string | `nil` |  |
| volumes | string | `nil` |  |
