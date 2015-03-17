# Using package papeR
Benjamin Hofner  
Tuesday, March 17, 2015  




# A short tutorial for package **papeR**

This is a short tutorial that covers some of the features of package **papeR**.

## Installation

To install the latest development version, one can use 
**devtools** to install packages from [github](http://github.com/hofnerb/papeR).


```r
install.packages("devtools")
```

Now we can load **devtools** to install **papeR**:

```r
library("devtools")
install_github("hofnerb/papeR")
```
(note that this chunk is not evaluated automatically).

## Loading the package

Now we can load the package:

```r
library("papeR")
```

## Labeled data frames

To be able to use all features of the package, we first need to 
create a labeled data frame. If we create a new data frame or 
import a data frame, we can extract and set variable labels

```r
data_orig <- data.frame(a = 1:10, 
                        b = 10:1, 
                        c = factor(sample(c(1:2), 10, replace = TRUE)))
data <- data_orig
labels(data)
```

```
##   a   b   c 
## "a" "b" "c"
```

```r
labels(data) <- c("Variable a", "Variable b", "Variable c")
is.labeled.data.frame(data)
```

```
## [1] TRUE
```

```r
labels(data)
```

```
##            a            b            c 
## "Variable a" "Variable b" "Variable c"
```

Alternatively, we can simply coerce the data frame:

```r
data2 <- as.labeled.data.frame(data_orig)
labels(data2)
```

```
##   a   b   c 
## "a" "b" "c"
```
In this case, the original labels are kept. Per default,
we use the variable names as labels. If the data set originates
from an SPSS data set and is imported imported via the function 
`read.spss()` from package **foreign**, we use the variable 
labels from SPSS. 

However, again we need to formally convert the data to a 
`labeled.data.frame` by using the function 
`as.labeled.data.frame()`.

### Methods for labeled data frames

For data frames of class `labeled.data.frame`, there exist
special plotting functions:

```r
par(mfrow = c(2, 2))
plot(data)
```

![](papeR_manual/fig-plot_labeled_dataframe-1.png) 

As one can see, the plot type is automatically determined 
based on the data type and the axis label is defiened by
the `labels()`.

To obtain group comparisons, we can use grouped plots:

```r
par(mfrow = c(1, 2))
plot(data, by = "c")
```

![](papeR_manual/fig-grouped_plot-1.png) 

We can as well plot everything against a metrical variable:

```r
par(mfrow = c(1, 2))
plot(data, with = "b")
```

![](papeR_manual/fig-with_x-1.png) 

## Summary tables

t.b.c.
