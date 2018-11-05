#!/usr/bin/env Rscript

# make sure that R/sysdata.rda is not out of date

nounfile <- "data-raw/nouns.txt"
adjfile <- "data-raw/adjectives.txt"
sysdatafile <- "R/sysdata.rda"

error_flag <- FALSE

if ( file.mtime(nounfile) > file.mtime(sysdatafile)){
  cat("Error:", nounfile, "is newer than", sysdatafile, "\n")
  error_flag <- TRUE
}

if ( file.mtime(adjfile) > file.mtime(sysdatafile)){
  cat("Error:", adjfile, "is newer than", sysdatafile, "\n")
  error_flag <- TRUE
}

if ( error_flag ){
  cat("Run 'make' in the ./raw-data\n")
  quit(save = "no", status = 1, runLast = FALSE)
}
