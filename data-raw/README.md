# memorids - build data for package

To build 'R/sysdata.Rda' enter the 'data-raw' directory and run...

```
make
```

This is a two stage build that initially builds individual Rda files from associated txt files:

* adjectives.txt -> adjectives.rda
* nouns.txt -> nouns.rda

This uses `create_Rda.R`, though make will take care of this for you.

These individual Rda files are then combined into a single 'sysdata.Rda' using `create_sysdata.R`.

To remove all the Rda files run:

```
make clean
```

## pre-commit hook

The repo contains a handy pre-commit hook to prevent committing when either `data-raw/nouns.txt` or `data-raw/adjectives.txt` is newer than `R/sysdata.R`.

To use it run the following in the main `memorid` directory:

```
ln -s ../../pre-commit.R .git/hooks/pre-commit
```
