pkgname <- "FrF2.catlg128"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('FrF2.catlg128')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Catalogues")
### * Catalogues

flush(stderr()); flush(stdout())

### Name: Catalogues
### Title: Catalogues of regular 128 run designs of various factor numbers
### Aliases: Catalogues catlg128.8to15 catlg128.16 catlg128.17 catlg128.18
###   catlg128.19 catlg128.20 catlg128.21 catlg128.22 catlg128.23
###   catlg128.24
### Keywords: array design

### ** Examples

data(catlg128.8to15)
catlg128.8to15[1:5]

## example of using the large catalogue
## the design in the example will also be found with the default catalogue
    ## because arrays for all compromise plans have been added to catlg with 
    ## FrF2 version 1.1-1
## not run because it takes very long because of the large catalogue
## Not run: 
##D data(catlg128.23)
##D length(catlg128.23)
##D plan <- FrF2(128, 23, estimable=compromise(23,1)$requirement, select.catlg=catlg128.23)
##D summary(plan)
##D rm(catlg128.23)
## End(Not run)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
