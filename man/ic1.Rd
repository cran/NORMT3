\name{ic1}
\alias{ic1}
\title{Compute IC1 formula from Nason (2005) }
\description{
	Computes $I_{C1}(p,d) = \int_{d}^{\infty} \cos (px) \exp (-x^2) dx$}
}
\usage{
ic1(p, d)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{ Argument for IC1 function}
  \item{d}{ Argument for IC1 function}
}
\details{
	An intermediate function for the computation of the inner product
	between Gaussian and Student's t distribution.
}
\value{
	Value of the function IC1
}
\references{ Nason, G.P. (2005) On the sum of the Gaussian and Student's t
	random variables. \emph{Technical Report}, 05:01,
	Statistics Group, Department of Mathematics, University of Bristol.}
\author{ Guy Nason }

\seealso{ \code{\link{normt3ip}}}
\examples{
ic1(1,1)
#
# Should give 0.03401986.
#
}
\keyword{ math }
