\name{FrF2.catlg128-package}
\alias{FrF2.catlg128-package}
\alias{FrF2.catlg128}
\docType{package}
\title{
Catalogues of resolution IV 128 run 2-level fractional factorials up to 33 factors 
that do have 5-letter words
}
\description{
Description: This package provides the complete catalogues of those resolution IV 
regular fractional factorial designs in 128 runs for up to 33 2-level factors that 
do have length 5 words (i.e. are not even). For 8 to 11 factors, the best design 
(resolution higher than IV, i.e. all two-factor interactions are clear) is included 
only.}

\details{
The complete set of designs on which these catalogues are based 
has been provided by Xu (2009) for up to 25 factors and by Mee (2012) for 26 to 33 factors. 
The designs provided in this package are useful for special tasks to 
be accomplished with package \pkg{\link[FrF2:FrF2-package]{FrF2}}. The catalogues 
are separately provided here, because they are very large 
and should not be forced upon \pkg{FrF2} users 
who do not need them. 

The main reason for providing the catalogues is to support estimability requirements 
for clear two-factor interactions in package \pkg{FrF2}. According to 
Wu, Mee and Tang (2012), resolution IV designs with no 5-letter words do not add 
value (there is always a better design that can accomodate the same clear two-factor interactions).
Therefore, starting with version 1.1, resolution IV designs without 5-letter words have been omitted 
from the catalogues, and the title of the package has been changed accordingly, 
from the previous "Complete catalogues of resolution IV 128 run 
2-level fractional factorials up to 24 factors". The previously available complete catalogues 
of designs can be downloaded from the author's website.
Designs for 25 to 33 factors have been added with version 1.2 of the package.
}
\author{
Ulrike Groemping

Maintainer: Ulrike Groemping <ulrike.groemping@bht-berlin.de>
}
\references{
   Mee, R. (2012) \emph{Personal communication}.
   Wu, H., Mee, R. and Tang, B. (2012) Fractional Factorial Designs With Admissible Sets of
         Clear Two-Factor Interactions. \emph{Technometrics} \bold{54}, 191-197.
   Xu, H. (2009) Algorithmic Construction of Efficient Fractional Factorial Designs 
         With Large Run Sizes. \emph{Technometrics} \bold{51}, 262-277.
}
\keyword{ array }
\keyword{ design }
\seealso{
\code{\link{Catalogues}}
}
