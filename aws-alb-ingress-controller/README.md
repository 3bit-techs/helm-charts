# aws-alb-ingress-controller

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![AppVersion: v1.1.6](https://img.shields.io/badge/AppVersion-v1.1.6-informational?style=flat-square)

A Helm chart for AWS ALB Ingress Controller

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/aws-alb-ingress-controller
```

## Configuration
```console
helm show values 3bit-techs/aws-alb-ingress-controller
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/aws-alb-ingress-controller
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| bigkraig | kraig.amador@ticketmaster.com |  |
| M00nF1sh | yyyng@amazon.com |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoDiscoverAwsRegion | bool | `false` |  |
| autoDiscoverAwsVpcID | bool | `false` |  |
| awsRegion | string | `"us-east-2"` |  |
| awsVpcID | string | `"vpc-xxx"` |  |
| clusterName | string | `"k8s"` |  |
| containerSecurityContext | object | `{}` |  |
| enableLivenessProbe | bool | `false` |  |
| enableReadinessProbe | bool | `false` |  |
| extraArgs | object | `{}` |  |
| extraEnv | object | `{}` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/amazon/aws-alb-ingress-controller"` |  |
| image.tag | string | `"v1.1.6"` |  |
| livenessProbeInitialDelay | int | `30` |  |
| livenessProbeTimeout | int | `1` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podLabels | object | `{}` |  |
| priorityClassName | string | `""` |  |
| rbac.create | bool | `true` |  |
| rbac.serviceAccount.annotations | object | `{}` |  |
| rbac.serviceAccount.create | bool | `true` |  |
| rbac.serviceAccount.name | string | `"default"` |  |
| readinessProbeInitialDelay | int | `30` |  |
| readinessProbeInterval | int | `60` |  |
| readinessProbeTimeout | int | `3` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| scope.ingressClass | string | `"alb"` |  |
| scope.singleNamespace | bool | `false` |  |
| scope.watchNamespace | string | `""` |  |
| securityContext | object | `{}` |  |
| tolerations | list | `[]` |  |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |
