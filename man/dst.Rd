\name{dst}
\alias{dst}
\title{ Density function of sphered Student's t distribution}
\description{
	Evaluates probability density function of sphered Student's
	t distribution on nu degrees of freedom. This is just the
	standard Student's t distribution rescaled to have unit variance.
}
\usage{
dst(x, nu = 3)
}
\arguments{
  \item{x}{ Where to evaluate the density}
  \item{nu}{ The degrees of freedom }
}
\details{Description says it all.
}
\value{
	The appropriate probability density.
}
\references{Nason, G.P. (2001) Robust projection indices. \emph{Journal of
	the Royal Statistical Society}, Series B, \bold{63}, 551--567. }
\author{ Guy Nason}

\seealso{ \code{\link{dnorm}}, \code{\link{dnormt3}}}
\examples{
dst(0)
#
# Should be  2/pi = 0.6366198
#
x <- seq(from=-5, to=5, length=100)
plot(x, dst(x), type="l")	# Produces a density plot
}
\keyword{ distribution }% at least one, from doc/KEYWORDS
