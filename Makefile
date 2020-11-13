package:
	find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git" -exec bash -c 'helm lint "{}";' \;
	find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git" -exec bash -c 'helm package "{}";' \;
	helm-docs --template-files=./README.md.gotmpl .
	find . -maxdepth 1 -mindepth 1 -type d -not -path "./.git" -exec bash -c 'helm repo index --url https://3bit-techs.github.io/helm-charts/ --merge index.yaml "{}";' \;
