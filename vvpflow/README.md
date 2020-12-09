# vvpflow

![Version: 1.0.1](https://img.shields.io/badge/Version-1.0.1-informational?style=flat-square) ![AppVersion: 1.0.1](https://img.shields.io/badge/AppVersion-1.0.1-informational?style=flat-square)

A Helm chart for Ververica Platform Flow (GitOps Orchestrator)

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/vvpflow
```

## Configuration
```console
helm show values 3bit-techs/vvpflow
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/vvpflow
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
| git.additionalVolumeMounts | list | `[]` |  |
| git.additionalVolumes | list | `[]` |  |
| git.env | object | `{}` |  |
| git.resources.limits.cpu | string | `"25m"` |  |
| git.resources.limits.memory | string | `"50Mi"` |  |
| git.resources.requests.cpu | string | `"25m"` |  |
| git.resources.requests.memory | string | `"50Mi"` |  |
| image | string | `"3bittechs/vvpflow"` |  |
| imagePullPolicy | string | `"Always"` |  |
| imagePullSecrets | string | `nil` |  |
| imageTag | string | `"1.0"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| replicaCount | int | `1` |  |
| tolerations | object | `{}` |  |
| vvpflow.env | object | `{}` |  |
| vvpflow.resources.limits.cpu | string | `"25m"` |  |
| vvpflow.resources.limits.memory | string | `"50Mi"` |  |
| vvpflow.resources.requests.cpu | string | `"25m"` |  |
| vvpflow.resources.requests.memory | string | `"50Mi"` |  |
