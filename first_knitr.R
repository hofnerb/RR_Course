## ----load_packages, include=FALSE----------------------------------------
library("xtable")

## ----test name, echo=TRUE, results='markup'------------------------------
x <- 1:10
plot(x)
print(x)

## ----echo=TRUE, results='asis', fig.width=5, fig.height = 5, out.width="0.4\\textwidth"----
x <- 1:10
plot(x)
print(x)
plot(rnorm(100))

## ----init, include=FALSE-------------------------------------------------
## from now on no echo
opts_chunk$set(echo = FALSE)

## ----create_table, results='asis'----------------------------------------
TAB <- table(x)
xtable(TAB)

## ----first_cache, cache=TRUE---------------------------------------------
Sys.sleep(2)
plot(1:3, main = "cached figure", xlab = "x")

## ----random, cache=TRUE--------------------------------------------------
set.seed(1234)
rnorm(100)

## ------------------------------------------------------------------------
rnorm(1)

## ----cache = TRUE, random_seed = rand_seed-------------------------------
rnorm(10)

## ----eval = FALSE--------------------------------------------------------
## ## extract code
## purl("first_knitr.Rnw", documentation = 1)

