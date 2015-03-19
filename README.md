# RR_Course

Material from RR course in Dortmund:
- The folder [`SAS`](SAS) contains the source and the resulting files (Word doc, PDF and HTML) 
  from a markdown knitr document that was used in conjunction with SAS.
- The folder [`papeR_manual`](papeR_manual) contains the figures that were produced by [`Using_papeR.Rmd`](Using_papeR.Rmd).
- [`README.md`](README.md) (this file)
- [`Using_papeR.Rmd`](Using_papeR.Rmd) is a knitr markdown file which produces the manual for package [papeR](http://github.com/hofnerb/papeR) which produces
  - the markdown file [`Using_papeR.Rm`](Using_papeR.Rm) and 
  - the folder [`papeR_manual`](papeR_manual).
- [`first_knitr.Rnw`](first_knitr.Rnw) is the main knitr document as produced in the course 
  (with some small changes and better documentation).
  - [`first_knitr.R`](first_knitr.R) is the result from running `purl` on the knitr document `first_knitr.Rnw`.
- [`tables.Rnw`](tables.Rnw) an example that shows the results of `papeR::latex.table.xxx()`

## Especially for all participants of the workhop: 
Please feel free to download the material, fork the repository or add patches or to add an issue (i.e., question, bug report, ...).

## Package [papeR](http://github.com/hofnerb/papeR)

- For a manual simply click on [`Using_papeR.Rm`](Using_papeR.Rm).
- An example of summary tables that were created using `papeR::latex.table.xxx()` is given in [`tables.Rnw`](tables.Rnw).
