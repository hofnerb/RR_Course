## ----load_packages, include=FALSE----------------------------------------
library("xtable")

## ----print_x, echo=TRUE, results='markup'--------------------------------
x <- 1:10
print(x)

## ----print_x_as_is, echo=TRUE, results='asis'----------------------------
x <- 1:10
print(x)

## ----plot_x--------------------------------------------------------------
plot(x)

## ----two_figures, fig.width=5, fig.height = 5, out.width="0.4\\textwidth", fig.show='hold'----
plot(x)
plot(rnorm(100))

## ----label with spaces, out.width="0.4\\textwidth"-----------------------
plot(1:5)

## ----init----------------------------------------------------------------
## from now on no syntax higlighting
opts_chunk$set(highlight = FALSE)

## ----create_table--------------------------------------------------------
TAB <- table(x)
TAB

## ----pretty_table, results='asis'----------------------------------------
xtable(TAB)

## ----first_cache, cache=TRUE---------------------------------------------
## use Sys.sleep to see that it is only executed in the first run
Sys.sleep(5)
plot(1:3, main = "cached figure", xlab = "x")

## ----random, cache=TRUE--------------------------------------------------
set.seed(1234)
y <- rnorm(100)
mean(y)

## ------------------------------------------------------------------------
rnorm(1)

## ----cache = TRUE, cache.seed = rand_seed--------------------------------
rnorm(10)

## ----random_seed---------------------------------------------------------
opts_chunk$set(cache.seed = rand_seed)

## ----eval = FALSE--------------------------------------------------------
## library("knitr")
## ## extract code.
## purl("first_knitr.Rnw", documentation = 1)

