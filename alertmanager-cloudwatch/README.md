# alertmanager-cloudwatch

![Version: 1.0.2](https://img.shields.io/badge/Version-1.0.2-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Alert Manager Cloudwatch integration with Helm chart for Kubernetes

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/alertmanager-cloudwatch
```

## Configuration
```console
helm show values 3bit-techs/alertmanager-cloudwatch
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/alertmanager-cloudwatch
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| awsRegion | string | `"us-east-1"` |  |
| cloudwatchNamespace | string | `"Prometheus"` |  |
| container.port | int | `8077` |  |
| ginMode | string | `"release"` |  |
| image.pullPolicy | string | `"Always"` |  |
| image.repository | string | `"3bittechs/alertmanager-cloudwatch:latest"` |  |
| namespace | string | `"monitoring"` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | float | `0.1` |  |
| resources.limits.memory | string | `"50Mi"` |  |
| securityContext.fsGroup | int | `472` |  |
| securityContext.runAsGroup | int | `472` |  |
| securityContext.runAsUser | int | `472` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations."eks.amazonaws.com/role-arn" | string | `"arn:aws:iam::123456789123:role/xyz"` |  |
| snsArn | string | `"arn:aws:sns:us-east-1:123123:sns_test"` |  |
