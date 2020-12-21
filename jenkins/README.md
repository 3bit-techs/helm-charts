# jenkins

![Version: 1.27.0](https://img.shields.io/badge/Version-1.27.0-informational?style=flat-square) ![AppVersion: lts](https://img.shields.io/badge/AppVersion-lts-informational?style=flat-square)

Open source continuous integration server. It supports multiple SCM tools including CVS, Subversion and Git. It can execute Apache Ant and Apache Maven-based projects as well as arbitrary scripts.

## Get Repo Info
```console
helm repo add 3bit-techs https://3bit-techs.github.io/helm-charts
helm repo update
```

## Install Chart
```console
helm install [RELEASE_NAME] 3bit-techs/jenkins
```

## Configuration
```console
helm show values 3bit-techs/jenkins
```

## Upgrading Chart
```console
helm upgrade [RELEASE_NAME] 3bit-techs/jenkins
```

## Uninstall Chart
```console
helm uninstall [RELEASE_NAME]
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| lachie83 | lachlan.evenson@microsoft.com |  |
| viglesiasce | viglesias@google.com |  |
| maorfr | maor.friedman@redhat.com |  |
| torstenwalter | mail@torstenwalter.de |  |
| mogaal | garridomota@gmail.com |  |
| wmcdona89 | wmcdona89@gmail.com |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalAgents | object | `{}` |  |
| agent.TTYEnabled | bool | `false` |  |
| agent.alwaysPullImage | bool | `false` |  |
| agent.args | string | `"${computer.jnlpmac} ${computer.name}"` |  |
| agent.command | string | `nil` |  |
| agent.componentName | string | `"jenkins-slave"` |  |
| agent.containerCap | int | `10` |  |
| agent.customJenkinsLabels | list | `[]` |  |
| agent.enabled | bool | `true` |  |
| agent.envVars | list | `[]` |  |
| agent.idleMinutes | int | `0` |  |
| agent.image | string | `"jenkins/jnlp-slave"` |  |
| agent.imagePullSecretName | string | `nil` |  |
| agent.nodeSelector | object | `{}` |  |
| agent.podName | string | `"default"` |  |
| agent.podRetention | string | `"Never"` |  |
| agent.podTemplates | object | `{}` |  |
| agent.privileged | bool | `false` |  |
| agent.resources.limits.cpu | string | `"512m"` |  |
| agent.resources.limits.memory | string | `"512Mi"` |  |
| agent.resources.requests.cpu | string | `"512m"` |  |
| agent.resources.requests.memory | string | `"512Mi"` |  |
| agent.sideContainerName | string | `"jnlp"` |  |
| agent.slaveConnectTimeout | int | `100` |  |
| agent.tag | string | `"3.27-1"` |  |
| agent.volumes | list | `[]` |  |
| agent.workingDir | string | `"/home/jenkins"` |  |
| agent.yamlMergeStrategy | string | `"override"` |  |
| agent.yamlTemplate | string | `""` |  |
| backup.annotations | object | `{}` |  |
| backup.componentName | string | `"backup"` |  |
| backup.destination | string | `"s3://jenkins-data/backup"` |  |
| backup.enabled | bool | `false` |  |
| backup.env | list | `[]` |  |
| backup.existingSecret | object | `{}` |  |
| backup.extraArgs | list | `[]` |  |
| backup.image.repository | string | `"maorfr/kube-tasks"` |  |
| backup.image.tag | string | `"0.2.0"` |  |
| backup.labels | object | `{}` |  |
| backup.resources.limits.cpu | int | `1` |  |
| backup.resources.limits.memory | string | `"1Gi"` |  |
| backup.resources.requests.cpu | int | `1` |  |
| backup.resources.requests.memory | string | `"1Gi"` |  |
| backup.schedule | string | `"0 2 * * *"` |  |
| checkDeprecation | bool | `true` |  |
| clusterZone | string | `"cluster.local"` |  |
| master."master.overwritePluginsFromImage" | bool | `true` |  |
| master.JCasC.authorizationStrategy | string | `"loggedInUsersCanDoAnything:\n  allowAnonymousRead: false"` |  |
| master.JCasC.configScripts | object | `{}` |  |
| master.JCasC.defaultConfig | bool | `false` |  |
| master.JCasC.enabled | bool | `false` |  |
| master.JCasC.securityRealm | string | `"legacy"` |  |
| master.additionalConfig | object | `{}` |  |
| master.additionalPlugins | list | `[]` |  |
| master.admin.existingSecret | string | `""` |  |
| master.admin.passwordKey | string | `"jenkins-admin-password"` |  |
| master.admin.userKey | string | `"jenkins-admin-user"` |  |
| master.adminUser | string | `"admin"` |  |
| master.authorizationStrategy | string | `"<authorizationStrategy class=\"hudson.security.FullControlOnceLoggedInAuthorizationStrategy\">\n  <denyAnonymousReadAccess>true</denyAnonymousReadAccess>\n</authorizationStrategy>"` |  |
| master.backendconfig.annotations | object | `{}` |  |
| master.backendconfig.apiVersion | string | `"extensions/v1beta1"` |  |
| master.backendconfig.enabled | bool | `false` |  |
| master.backendconfig.labels | object | `{}` |  |
| master.backendconfig.name | string | `nil` |  |
| master.backendconfig.spec | object | `{}` |  |
| master.cli | bool | `false` |  |
| master.componentName | string | `"jenkins-master"` |  |
| master.csrf.defaultCrumbIssuer.enabled | bool | `true` |  |
| master.csrf.defaultCrumbIssuer.proxyCompatability | bool | `true` |  |
| master.customConfigMap | bool | `false` |  |
| master.customInitContainers | list | `[]` |  |
| master.customJenkinsLabels | list | `[]` |  |
| master.deploymentAnnotations | object | `{}` |  |
| master.deploymentLabels | object | `{}` |  |
| master.disableRememberMe | bool | `false` |  |
| master.disabledAgentProtocols[0] | string | `"JNLP-connect"` |  |
| master.disabledAgentProtocols[1] | string | `"JNLP2-connect"` |  |
| master.enableRawHtmlMarkupFormatter | bool | `false` |  |
| master.enableXmlConfig | bool | `true` |  |
| master.executorMode | string | `"NORMAL"` |  |
| master.extraPorts | list | `[]` |  |
| master.healthProbeLivenessFailureThreshold | int | `5` |  |
| master.healthProbeLivenessInitialDelay | int | `90` |  |
| master.healthProbeLivenessPeriodSeconds | int | `10` |  |
| master.healthProbeReadinessFailureThreshold | int | `3` |  |
| master.healthProbeReadinessInitialDelay | int | `60` |  |
| master.healthProbeReadinessPeriodSeconds | int | `10` |  |
| master.healthProbes | bool | `true` |  |
| master.healthProbesLivenessTimeout | int | `5` |  |
| master.healthProbesReadinessTimeout | int | `5` |  |
| master.hostAliases | list | `[]` |  |
| master.hostNetworking | bool | `false` |  |
| master.httpsKeyStore.enable | bool | `false` |  |
| master.httpsKeyStore.fileName | string | `"keystore.jks"` |  |
| master.httpsKeyStore.httpPort | int | `8081` |  |
| master.httpsKeyStore.jenkinsHttpsJksSecretName | string | `""` |  |
| master.httpsKeyStore.jenkinsKeyStoreBase64Encoded | string | `"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\n"` |  |
| master.httpsKeyStore.password | string | `"password"` |  |
| master.httpsKeyStore.path | string | `"/var/jenkins_keystore"` |  |
| master.image | string | `"jenkins/jenkins"` |  |
| master.imagePullPolicy | string | `"Always"` |  |
| master.imagePullSecretName | string | `nil` |  |
| master.ingress.annotations | object | `{}` |  |
| master.ingress.apiVersion | string | `"extensions/v1beta1"` |  |
| master.ingress.enabled | bool | `false` |  |
| master.ingress.hostName | string | `nil` |  |
| master.ingress.labels | object | `{}` |  |
| master.ingress.paths | list | `[]` |  |
| master.ingress.tls | string | `nil` |  |
| master.initScripts | list | `[]` |  |
| master.installPlugins[0] | string | `"kubernetes:1.25.7"` |  |
| master.installPlugins[1] | string | `"workflow-job:2.39"` |  |
| master.installPlugins[2] | string | `"workflow-aggregator:2.6"` |  |
| master.installPlugins[3] | string | `"credentials-binding:1.22"` |  |
| master.installPlugins[4] | string | `"git:4.2.2"` |  |
| master.installPlugins[5] | string | `"configuration-as-code:1.41"` |  |
| master.jenkinsHome | string | `"/var/jenkins_home"` |  |
| master.jenkinsRef | string | `"/usr/share/jenkins/ref"` |  |
| master.jobs | object | `{}` |  |
| master.lifecycle | string | `nil` |  |
| master.loadBalancerSourceRanges[0] | string | `"0.0.0.0/0"` |  |
| master.markupFormatter | string | `"plainText"` |  |
| master.nodeSelector | object | `{}` |  |
| master.numExecutors | int | `0` |  |
| master.overwriteConfig | bool | `false` |  |
| master.overwriteJobs | bool | `false` |  |
| master.podAnnotations | object | `{}` |  |
| master.podLabels | object | `{}` |  |
| master.prometheus.alertingRulesAdditionalLabels | object | `{}` |  |
| master.prometheus.alertingrules | list | `[]` |  |
| master.prometheus.enabled | bool | `false` |  |
| master.prometheus.scrapeEndpoint | string | `"/prometheus"` |  |
| master.prometheus.scrapeInterval | string | `"60s"` |  |
| master.prometheus.serviceMonitorAdditionalLabels | object | `{}` |  |
| master.resources.limits.cpu | string | `"2000m"` |  |
| master.resources.limits.memory | string | `"4096Mi"` |  |
| master.resources.requests.cpu | string | `"50m"` |  |
| master.resources.requests.memory | string | `"256Mi"` |  |
| master.rollingUpdate | object | `{}` |  |
| master.route.annotations | object | `{}` |  |
| master.route.enabled | bool | `false` |  |
| master.route.labels | object | `{}` |  |
| master.scriptApproval | list | `[]` |  |
| master.securityRealm | string | `"<securityRealm class=\"hudson.security.LegacySecurityRealm\"/>"` |  |
| master.serviceAnnotations | object | `{}` |  |
| master.serviceLabels | object | `{}` |  |
| master.servicePort | int | `8080` |  |
| master.serviceType | string | `"ClusterIP"` |  |
| master.sidecars.configAutoReload.enabled | bool | `false` |  |
| master.sidecars.configAutoReload.folder | string | `"/var/jenkins_home/casc_configs"` |  |
| master.sidecars.configAutoReload.image | string | `"kiwigrid/k8s-sidecar:0.1.144"` |  |
| master.sidecars.configAutoReload.imagePullPolicy | string | `"IfNotPresent"` |  |
| master.sidecars.configAutoReload.resources | object | `{}` |  |
| master.sidecars.configAutoReload.sshTcpPort | int | `1044` |  |
| master.sidecars.other | list | `[]` |  |
| master.slaveConnectTimeout | int | `5` |  |
| master.slaveDefaultsProviderTemplate | string | `""` |  |
| master.slaveHostPort | string | `nil` |  |
| master.slaveJenkinsTunnel | string | `nil` |  |
| master.slaveJenkinsUrl | string | `nil` |  |
| master.slaveKubernetesNamespace | string | `nil` |  |
| master.slaveListenerPort | int | `50000` |  |
| master.slaveListenerServiceAnnotations | object | `{}` |  |
| master.slaveListenerServiceType | string | `"ClusterIP"` |  |
| master.slaveReadTimeout | int | `15` |  |
| master.tag | string | `"lts"` |  |
| master.targetPort | int | `8080` |  |
| master.terminationGracePeriodSeconds | string | `nil` |  |
| master.testEnabled | bool | `true` |  |
| master.tolerations | list | `[]` |  |
| master.usePodSecurityContext | bool | `true` |  |
| master.useSecurity | bool | `true` |  |
| networkPolicy.apiVersion | string | `"networking.k8s.io/v1"` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.externalAgents | object | `{}` |  |
| networkPolicy.internalAgents.allowed | bool | `true` |  |
| networkPolicy.internalAgents.namespaceLabels | object | `{}` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.annotations | object | `{}` |  |
| persistence.enabled | bool | `true` |  |
| persistence.existingClaim | string | `nil` |  |
| persistence.mounts | string | `nil` |  |
| persistence.size | string | `"8Gi"` |  |
| persistence.storageClass | string | `nil` |  |
| persistence.volumes | string | `nil` |  |
| rbac.create | bool | `true` |  |
| rbac.readSecrets | bool | `false` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `nil` |  |
| serviceAccountAgent.annotations | object | `{}` |  |
| serviceAccountAgent.create | bool | `false` |  |
| serviceAccountAgent.name | string | `nil` |  |
