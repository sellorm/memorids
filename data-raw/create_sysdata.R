#!/usr/bin/env Rscript

infiles <- c("adjectives.Rda", "nouns.Rda")

if(FALSE %in% file.exists(infiles)){
  stop("input Rda(s) missing - adjectives.Rda, nouns.Rda")
}

invisible(lapply(infiles, function(x){load(x, envir = .GlobalEnv)}))

rm(infiles)
save(list = ls(), file = "../R/sysdata.Rda")
