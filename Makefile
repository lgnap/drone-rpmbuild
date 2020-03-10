.PHONY: help build-centos6 build-centos7
.DEFAULT_GOAL := help

build-centos6: ## Build CentOs 6
	docker build --pull --tag rpmbuild:c6 --file Dockerfile.c6 .

build-centos7: ## Build CentOs 7
	docker build --pull --tag rpmbuild:c7 --file Dockerfile.c7 .

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

