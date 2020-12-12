help: ## Display this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-17s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

all: prep version data build archive ## Run the entire process (CI only)

prep: ## makes the output directory
	bash projctl prep

version: ## updates the version with the build number
	bash projctl version

data: ## create the data
	bash projctl data

build: ## Build the package
	bash projctl build

archive: ## move the package outputs to the 'output' directory
	bash projctl archive

pkgdown: ## Build pkgdown site
	R -e 'pkgdown::build_site()'

readme: ## re-render the README file
	R -e 'rmarkdown::render("README.Rmd")'

clean:
	-rm -r output
	-rm README.html

.PHONY: all prep version data build archive clean pkgdown readme
