\name{dnormt3}
\alias{dnormt3}
\title{Density function of sum of Gaussian and Student's t on 3 df}
\description{
	Computes the probability density function of the sum of the
	Gaussian distribution and the Student's t distribution on
	3 degrees of freedom. 
}
\usage{
dnormt3(x, mean = 0, sd = 1)
}
\arguments{
  \item{x}{ Where to evaluate the density function}
  \item{mean}{ The mean of the Gaussian}
  \item{sd}{ The standard deviation of the Gaussian}
}
\details{
	Computes the probability density function of the sum of the
	Gaussian distribution and the Student's t distribution on
	3 degrees of freedom. 
}
\value{The appropriate pdf value.
}
\references{ Nason, G.P. (2005) On the sum of the Gaussian and Student's t
        random variables. \emph{Technical Report}, 05:01,
        Statistics Group, Department of Mathematics, University of Bristol.}
\author{ Guy Nason }

\seealso{ \code{\link{normt3ip}},\code{\link{dst}},\code{\link{dnorm}}}

\examples{
dnormt3(0)
#
# Should be 0.4501582 = sqrt(2)/pi
#
x <- seq(from=-5, to=5, length=100)
plot(x, dnormt3(x), type="l")	# Density plot
}
\keyword{ distribution }% at least one, from doc/KEYWORDS
