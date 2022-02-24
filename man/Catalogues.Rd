\name{Catalogues}
\alias{Catalogues}
\alias{catlg128.8to15}
\alias{catlg128.16}
\alias{catlg128.17}
\alias{catlg128.18}
\alias{catlg128.19}
\alias{catlg128.20}
\alias{catlg128.21}
\alias{catlg128.22}
\alias{catlg128.23}
\alias{catlg128.24}
\alias{catlg128.25}
\alias{catlg128.26to33}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Catalogues of regular 128 run designs of various factor numbers}
\description{
   Catalogues of regular 128 run designs of various factor numbers}
\usage{
catlg128.8to15
catlg128.16
catlg128.17
catlg128.18
catlg128.19
catlg128.20
catlg128.21
catlg128.22
catlg128.23
catlg128.24
catlg128.25
catlg128.26to33
}
%- maybe also 'usage' for other objects documented here.
\details{
  The files contain catalogues for regular fractional factorial designs in 128 runs; 
  the numbers after the period indicate the number(s) of factors covered by the 
  respective catalogue. All the catalogues are lists of class \code{\link[FrF2]{catlg}}. 
  They are provided in support of package \pkg{\link[FrF2:FrF2-package]{FrF2}}. \cr
  
  Originally, their main intention was to support automatic search of clear designs with 
  options \code{estimable} and \code{clear=TRUE} in function \code{\link{FrF2}}. 
  For this purpose, in principle, a complete catalogue of resolution IV designs in 128 runs 
  would be needed. The catalogues come from Xu (2009; supplement on his website up to 25 factors) 
  or Mee (2012, personal communication) 
  and have been enriched by information on clear interactions 
  (entry \code{clear.2fis} for each element). 
  
  Since version 2 of package \pkg{FrF2}, the catalogues can also support 
  blocking of designs by the method proposed by Godolphin (2020), 
  automated as described in Groemping (2021); with this method, blocking can (but need not) 
  be combined with requiring specific 2fis to be clear. 
  A few catalogue elements that are useful for that method have been added to 
  the catalogue \code{catlg} in package \pkg{FrF2}. If a desired blocked design cannot 
  be obtained in adequate quality by using entries from \code{catlg} or from the suitable 
  catalogue from this package, one may have to resort to the larger catalogues that 
  are available from the author's website (see also next paragraph).
  
  For the search of clear designs, 
  Wu, Mee and Tang (2012) proved that one need not consider designs with 
  no 5-letter words, as they are always dominated by a better design that can 
  clearly accomodate the same two-factor interactions. Therefore, as of version 1.1 
  of this package, the resolution IV designs in the catalogues have been reduced to 
  those that do have 5-letter words. For the search for clear designs, it even suffices 
  to search dominating designs only. These are identified by the dominating element 
  of each catalogue entry. 
  The previous complete catalogues of designs 
  can be downloaded from the author's website. Catalogues 
  for 25 to 33 factors have been made available with version 1.2 of the package. 

  If one of these catalogues is used in the \code{select.catlg} option of 
  function \code{\link[FrF2]{FrF2}}, the function is guaranteed to find the 
  best clear design in 128 runs for the requested number of factors, 
  when used with its option \code{estimable}.
  
  For earlier versions of the package, the catalogues had to be loaded with 
  a \code{data()} command. This is no longer required, and not even supported; 
  the catalogues will now be automatically loaded on first use.
}
\references{ 
Godolphin, J. (2020). Construction of Blocked Factorial Designs to Estimate 
   Main Effects and Selected Two-Factor Interactions. \emph{J. Roy. Statist. Soc.} B \bold{83}, 
   5-29.
Groemping, U. (2021). An algorithm for blocking regular fractional factorial 2-level 
   designs with clear two-factor interactions. \emph{Computational Statistics & Data Analysis} \bold{153}, 1-18.
Mee, R. (2012) Catalogues of even/odd designs produced by Robert Block. 
        \emph{Personal communication}.
Wu, H., Mee, R. and Tang, B. (2012) Fractional Factorial Designs With Admissible Sets of
         Clear Two-Factor Interactions. \emph{Technometrics} \bold{54}, 191-197.
Xu, H. (2009) Algorithmic Construction of Efficient Fractional Factorial Designs 
         With Large Run Sizes. \emph{Technometrics} \bold{51}, 262-277.
}
\author{ Ulrike Groemping }

\seealso{ See Also \code{\link[FrF2]{FrF2}}, \code{\link[FrF2]{catlg}}  }
\examples{
catlg128.8to15[1:5]

\donttest{
## example of using a catalogue from this package with function FrF2
## for keeping interactions clear
## the design in the example will also be found with the default catalogue
    ## because arrays for all compromise plans with up to 24 factors 
    ## have been added to catlg with FrF2 version 1.1-1
plan <- FrF2(128, 23, estimable=compromise(23,1:2)$requirement, select.catlg=catlg128.23)
summary(plan)
length(catlg128.23)

## example of using a catalogue from this package with function FrF2
## for blocking a design
requirement <- compromise(13,1)$requirement
## loop through designs from catlg 
nn1 <- names(catlg128.8to15[nruns(catlg128.8to15)==128 & nfac(catlg128.8to15)==13])
for (nam in nn1){
  suppressMessages(
    des128fromcatlg <- try(
         FrF2(design=nam, blocks=32,
            factor.names=Letters[15:27], estimable=requirement, 
            alias.block.2fis = TRUE, select.catlg=catlg128.8to15), 
        silent=TRUE)
    )
  ## stop at first success
  if (!"try-error" \%in\% class(des128fromcatlg)) break
}
summary(des128fromcatlg)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ array }
\keyword{ design }% __ONLY ONE__ keyword per line
