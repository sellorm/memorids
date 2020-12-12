#!/usr/bin/env Rscript

# make sure that R/sysdata.rda is not out of date

nounfile <- "data-raw/nouns.txt"
adjfile <- "data-raw/adjectives.txt"
sysdatafile <- "R/sysdata.rda"


if ( file.mtime(nounfile) > file.mtime(sysdatafile) |
  file.mtime(adjfile) > file.mtime(sysdatafile) ){
  stop("Source files newer than target\n  Run 'make' in ./data-raw")
}


# Update README.md if required

if ( file.mtime("README.Rmd") > file.mtime("README.md") ){
  rmarkdown::render("README.Rmd")
}
