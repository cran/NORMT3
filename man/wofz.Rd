\name{wofz}
\alias{wofz}
\title{Faddeeva function}
\description{
  Computes the Faddeeva function of a complex valued argument. This function is
  \deqn{\exp{-z^2}*erfc(-iz)} .
}
\usage{
wofz(z)
}
\arguments{
  \item{z}{Argument of Faddeeva function}
}
\details{
  Computes the Faddeeva function of a complex valued argument. This function is
  \deqn{\exp{-z^2}*erfc(-iz)}

  This function calls FORTRAN code (algorithm TOMS 680)
  which computes the Faddeeva function. 
}
\value{
  The Faddeeva function, w(z)
}
\references{
  Poppe, G.P.M. and Wijers, C.M.J. (1990) More efficient computation of the
  complex error function. \emph{ACM Transactions on Mathematical
    Software}, \bold{16}, 38--46.
}
\author{Krishna Myneni, krishna.myneni@ccreweb.org}


\seealso{\code{\link{erf} \link{erfc}}}
\examples{
options(digits=15)
wofz(0)
#
# Should give 1+0i
#
wofz(1)
#
# Should give 0.367879441171442+0.607157705841394i 
#
wofz(complex(re=1, im=1))
#
# Should give 0.304744205256913+0.208218938202832i 
#
}
\keyword{math}
