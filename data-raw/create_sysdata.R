#!/usr/bin/env Rscript

infiles <- c("adjectives.rda", "nouns.rda")

if(FALSE %in% file.exists(infiles)){
  stop("input Rda(s) missing - adjectives.rda, nouns.rda")
}

invisible(lapply(infiles, function(x){load(x, envir = .GlobalEnv)}))

rm(infiles)
save(list = ls(), file = "../R/sysdata.rda")
