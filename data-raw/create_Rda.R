#!/usr/bin/env Rscript

# get command line arguments
args <- commandArgs(trailingOnly = TRUE)

# Check if input file really exists
if (!file.exists(args[1])){
  stop("Missing file name argument or file not found")
}

# set the object the same as the file name but with the extension removed
obj_name <- gsub(x = args[1], pattern = ".[a-z]*$", replacement = "")

# use the object name to create the output file name
outfile <- paste0(obj_name, ".rda")

# check to see if the output file already exists
if (file.exists(outfile)){
  msg <- paste0("Removing existing output file: ", outfile)
  warning(msg, call. = FALSE)
  invisible(file.remove(outfile))
}

# Read in the data from the input file
obj_data <- readLines(args[1])

# assign the object data to a variable named for the value of object name
assign(obj_name, obj_data)

# this bit doesn't work - tried get and deparse
save(list = obj_name, file = outfile)
