.PHONY: help build-rhel6 build-rhel7 build-centos6 build-centos7
.DEFAULT_GOAL := help

build-rhel6: ## Build RHEL 6
	docker build --pull --tag rpmbuild:el6 --file Dockerfile.el6 .

build-rhel7: ## Build RHEL 7
	docker build --pull --tag rpmbuild:el7 --file Dockerfile.el7 .

build-centos6: ## Build CentOs 6
	docker build --pull --tag rpmbuild:c6 --file Dockerfile.c6 .

build-centos7: ## Build CentOs 7
	docker build --pull --tag rpmbuild:c7 --file Dockerfile.c7 .

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

