\name{is1}
\alias{is1}
\title{Compute IS1 formula from Nason (2005) }
\description{
	Computes $I_{S1}(p,d) = \int_{d}^{\infty} \cos (px) \exp (-x^2) dx$}
}
\usage{
is1(p, d)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{ Argument for IS1 function}
  \item{d}{ Argument for IS1 function}
}
\details{
	An intermediate function for the computation of the inner product
	between Gaussian and Student's t distribution.
}
\value{
	Value of the function IS1
}
\references{ Nason, G.P. (2005) On the sum of the Gaussian and Student's t
	random variables. \emph{Technical Report}, 05:01,
	Statistics Group, Department of Mathematics, University of Bristol.}
\author{ Guy Nason }

\seealso{ \code{\link{normt3ip}}}
\examples{
is1(1,1)
#
# Should give 0.1297382.
#
}
\keyword{ math }
