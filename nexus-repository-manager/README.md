# nexus-repository-manager

![Version: 28.1.3](https://img.shields.io/badge/Version-28.1.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.28.1](https://img.shields.io/badge/AppVersion-3.28.1-informational?style=flat-square)

Sonatype Nexus Repository Manager - Universal Binary repository

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/nexus-repository-manager
```

## Configuration
```console
helm show values 3bit-techs/nexus-repository-manager
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/nexus-repository-manager
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Sonatype | support@sonatype.com |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| config.data | list | `[]` |  |
| config.enabled | bool | `false` |  |
| config.mountPath | string | `"/sonatype-nexus-conf"` |  |
| deployment.additionalContainers | string | `nil` |  |
| deployment.additionalVolumeMounts | string | `nil` |  |
| deployment.additionalVolumes | string | `nil` |  |
| deployment.annotations | object | `{}` |  |
| deployment.initContainers | string | `nil` |  |
| deployment.postStart.command | string | `nil` |  |
| deployment.preStart.command | string | `nil` |  |
| deployment.terminationGracePeriodSeconds | int | `120` |  |
| deploymentStrategy | string | `"Recreate"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"sonatype/nexus3"` |  |
| image.tag | string | `"3.28.1"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hostDocker | string | `"registry.demo"` |  |
| ingress.hostPath | string | `"/"` |  |
| ingress.hostRepo | string | `"repo.demo"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nexus.dockerPort | int | `18443` |  |
| nexus.dockerSupport.enabled | bool | `true` |  |
| nexus.env[0].name | string | `"install4jAddVmParams"` |  |
| nexus.env[0].value | string | `"-Xms1200M -Xmx1200M -XX:MaxDirectMemorySize=2G -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"` |  |
| nexus.env[1].name | string | `"NEXUS_SECURITY_RANDOMPASSWORD"` |  |
| nexus.env[1].value | string | `"true"` |  |
| nexus.hostAliases | list | `[]` |  |
| nexus.livenessProbe.failureThreshold | int | `6` |  |
| nexus.livenessProbe.initialDelaySeconds | int | `30` |  |
| nexus.livenessProbe.path | string | `"/"` |  |
| nexus.livenessProbe.periodSeconds | int | `30` |  |
| nexus.livenessProbe.timeoutSeconds | int | `10` |  |
| nexus.nexusPort | int | `8081` |  |
| nexus.podAnnotations | object | `{}` |  |
| nexus.readinessProbe.failureThreshold | int | `6` |  |
| nexus.readinessProbe.initialDelaySeconds | int | `30` |  |
| nexus.readinessProbe.path | string | `"/"` |  |
| nexus.readinessProbe.periodSeconds | int | `30` |  |
| nexus.readinessProbe.timeoutSeconds | int | `10` |  |
| nexus.resources | object | `{}` |  |
| nexus.securityContext.fsGroup | int | `2000` |  |
| nexusProxyRoute.annotations | string | `nil` |  |
| nexusProxyRoute.enabled | bool | `false` |  |
| nexusProxyRoute.labels | string | `nil` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `true` |  |
| persistence.storageSize | string | `"8Gi"` |  |
| route.annotations | string | `nil` |  |
| route.enabled | bool | `false` |  |
| route.labels | string | `nil` |  |
| route.name | string | `"docker"` |  |
| route.portName | string | `"docker"` |  |
| secret.data | list | `[]` |  |
| secret.enabled | bool | `false` |  |
| secret.mountPath | string | `"/etc/secret-volume"` |  |
| secret.readOnly | bool | `true` |  |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.labels | object | `{}` |  |
| service.name | string | `"nexus3"` |  |
| service.ports[0].name | string | `"nxrm-svc"` |  |
| service.ports[0].port | int | `8081` |  |
| service.ports[0].targetPort | string | `"nexus-ui"` |  |
| service.serviceType | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| statefulset.enabled | bool | `false` |  |
| tolerations | list | `[]` |  |
