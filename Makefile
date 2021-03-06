test:
	find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git" -exec bash -c 'helm lint "{}";' \;
	find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git" -exec bash -c 'helm template "{}" -f "{}"/values.yaml | kubectl apply --dry-run=client -f -;' \;
docs:
	helm-docs --template-files=./README.md.gotmpl .

package: test docs
	find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git" -exec bash -c 'helm package "{}";' \;
	helm repo index --url https://3bit-techs.github.io/helm-charts/ .
