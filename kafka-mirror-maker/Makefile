package:
	helm lint
	helm template . -f values.yaml | kubectl apply --dry-run=client -f -
	helm package .
