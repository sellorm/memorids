
<!-- README.md is generated from README.Rmd. Please edit that file -->

# memorids

The goal of memorids is to provide a simple way to get good quality,
memorable IDs.

<!-- badges: start -->

[![R-CMD-check](https://github.com/sellorm/memorids/workflows/R-CMD-check/badge.svg)](https://github.com/sellorm/memorids/actions)
[![Codecov](https://img.shields.io/codecov/c/github/sellorm/memorids.svg)](https://codecov.io/gh/sellorm/memorids/)
<!-- badges: end -->

For one reason or another I’ve implemented various versions of this over
the years and wanted to make a simple, reusable package to do the work
for me instead.

The IDs created are two words in English – an adjective followed by a
noun – and are built from a random sample of a list of each.

memorids has enough adjectives and nouns to create over half a million
unique combinations of ID.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sellorm/memorids")
```

## Example

Let’s set a seed first so the results are reproducible:

``` r
set.seed(42)
```

memorids offers a single function, `memorid()`, which returns a random
memorable ID.

``` r
memorids::memorid()
#> [1] "memorable-salad"
memorids::memorid()
#> [1] "unappetising-hall"
memorids::memorid()
#> [1] "nonresistant-rain"
```

You can also change the separator.

``` r
memorids::memorid(sep = " ")
#> [1] "subliminal cuttlefish"
```

## Collisions

Please remember that memorids aren’t unique IDs. There are a finite
number of them – 28,473,120 to be precise – and as a consequence, you
should not use them in situations where a unique ID is required without
also checking for collisions.

The safest way to do this is to track what memorids you’re currently
using and check against that list for a collision when issuing a new
memorid.

``` r
memorids:::memorids_stats()
#> memorids info...
#>   Number of adjectives              : 17576 
#>   Number of nouns                   : 1620 
#>   Number of combinations            : 28473120 
#>   Max length of adjectives          : 23 
#>   Max length of nouns               : 21 
#>   Mean iterations before collision  : 7042
```

## pre-commit hook

The repo contains a handy pre-commit hook to prevent committing when
either `data-raw/nouns.txt` or `data-raw/adjectives.txt` is newer than
`R/sysdata.R`.

To use it run the following in the main `memorid` directory:

``` bash
ln -s ../../pre-commit.R .git/hooks/pre-commit
```
