\name{erfc}
\alias{erfc}
\title{Complementary error function}
\description{
  Computes the complementary error function of a (possibly) complex
  valued argument. This function is
  \deqn{2/\sqrt{\pi} \int_{z}^{\infty} \exp^{-t^2} dt}.
}
\usage{
erfc(z)
}
\arguments{
  \item{z}{Argument of complementary error function}
}
\details{
  Computes the complementary error function of a (possibly) complex
  valued argument. This function is
  \deqn{2/\sqrt{\pi} \int_{z}^{\infty} \exp^{-t^2} dt}

  This function actually calls FORTRAN code (algorithm TOMS 680)
  which computes the Faddeeva's function and then with a slight
  modification obtains the erfc function of a complex-valued
  argument.
}
\value{
  The complementary error function of z
}
\references{
  Poppe, G.P.M. and Wijers, C.M.J. (1990) More efficient computation of the
  complex error function. \emph{ACM Transactions on Mathematical
    Software}, \bold{16}, 38--46.
}
\author{Guy P. Nason, Department of Mathematics, University of Bristol}


\seealso{\code{\link{erf}}}
\examples{
erfc(0)
#
# Should give 1
#
erfc(1)
#
# Should give 0.1572992+0i
#
erfc(complex(re=1, im=1))
#
# Should give -0.3161513-0.1904535i
#
}
\keyword{math}
