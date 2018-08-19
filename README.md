# memorids

The goal of memorids is to provide a simple way to get good quality, memorable IDs.

[![Travis-CI Build Status](https://travis-ci.org/sellorm/memorids.svg?branch=master)](https://travis-ci.org/sellorm/memorids) [![Codecov](https://img.shields.io/codecov/c/github/sellorm/memorids.svg)](https://codecov.io/gh/sellorm/memorids/)

For one reason or another I've implemented various versions of this over the years and wanted to make a simple, reusable package to do the work for me instead.

The IDs created are two words in English -- an adjective followed by a noun -- and are built from a random sample of a list of each.

memorids has enough adjectives and nouns to create a little over half a million unique combinations of ID.

## Installation

You can install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sellorm/memorids")
```

## Example

memorids offers a single function, `memorid()`, which returns the memorable ID.

``` r
> memorids::memorid()
[1] "ungroomed-professor"
> memorids::memorid()
[1] "reluctant-pipe"
> memorids::memorid()
[1] "energetic-presentation"
```

You can also change the separator.

``` r
> memorids::memorid(sep = " ")
[1] "mysterious butterfly"
```
