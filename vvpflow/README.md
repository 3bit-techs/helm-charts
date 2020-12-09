# vvpflow

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

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
| git.additionalVolumeMounts[0].mountPath | string | `"/etc/git-secret/"` |  |
| git.additionalVolumeMounts[0].name | string | `"git-secret"` |  |
| git.additionalVolumes[0].name | string | `"git-secret"` |  |
| git.additionalVolumes[0].secret.items[0].key | string | `"identity"` |  |
| git.additionalVolumes[0].secret.items[0].path | string | `"ssh"` |  |
| git.additionalVolumes[0].secret.secretName | string | `"vvpflow-secret"` |  |
| git.env.GIT_KNOWN_HOSTS | string | `"false"` |  |
| git.env.GIT_SYNC_BRANCH | string | `"homolog"` |  |
| git.env.GIT_SYNC_DEST | string | `"m7-ds-eks"` |  |
| git.env.GIT_SYNC_REPO | string | `"ssh://APKAXLQWECJ3RTT2ZXGK@git-codecommit.us-east-1.amazonaws.com/v1/repos/m7-ds-eks"` |  |
| git.env.GIT_SYNC_ROOT | string | `"/usr/src/repos"` |  |
| git.env.GIT_SYNC_SSH | string | `"true"` |  |
| git.env.GIT_SYNC_WAIT | string | `"60"` |  |
| image | string | `"3bittechs/vvpflow"` |  |
| imagePullPolicy | string | `"Always"` |  |
| imagePullSecrets | string | `nil` |  |
| imageTag | string | `"1.0"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources.limits.cpu | string | `"500m"` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"500m"` |  |
| resources.requests.memory | string | `"2Gi"` |  |
| tolerations | object | `{}` |  |
| vvpflow.env.APP_ROOT | string | `"/usr/src/repos/m7-ds-eks/vvpflow"` |  |
| vvpflow.env.VVP_HOST | string | `"http://ververica-platform-ververica-platform.vvp.svc.cluster.local:80"` |  |
