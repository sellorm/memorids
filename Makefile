help: ## Display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-17s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

all: prep version data build archive ## Run the entire process (CI only)

prep: ## makes the output directory
	[ -d output ] && rm -r output

version: ## updates the version with the build number
	sed -i "/Version/ s/\$/.${BUILD_NUMBER}/" DESCRIPTION

data: ## create the data
	cd data-raw && make

build: ## Build the package
	R -e 'devtools::build(path = "/tmp/")'

archive: ## move the package outputs to the 'output' directory
	[ -d output ] || mkdir output
	mv /tmp/dailies_*.tar.gz ./output/

clean:
	-rm -r output

.PHONY: all prep version data build archive clean
