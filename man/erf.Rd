\name{erf}
\alias{erf}
\title{Error function}
\description{
	Computes the error function of a (possibly) complex
	valued argument. This function is 1-erfc(z).
}
\usage{
erf(z)
}
\arguments{
  \item{z}{Argument of error function}
}
\details{
	Computes the error function of a (possibly) complex
	valued argument by computing the complementary error function
	and subtracting the answer from 1.
}
\value{
	The error function of z
}
\references{
Poppe, G.P.M. and Wijers, C.M.J. (1990) More efficient computation of the
	complex error function. \emph{ACM Transactions on Mathematical
	Software}, \bold{16}, 38--46.
}
\author{Guy P. Nason, Department of Mathematics, University of Bristol}


\seealso{ \code{\link{erfc}}}
\examples{
erf(0)
#
# Should give 0
#
erf(1)
#
# Should give 0.8427008+0i
#
erf(complex(re=1, im=1))
#
# Should give 1.316151+0.1904535i
#
}
\keyword{math}
