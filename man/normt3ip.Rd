\name{normt3ip}
\alias{normt3ip}
\title{Compute inner product function of Gaussian and t3 distribution}
\description{This function evaluates the inner product function of
	the (sphered) Student's t distribution on 3 df and the Gaussian
	distribution as defined by Theorem~1 of Nason, 2005
}
\usage{
normt3ip(mu, sigma)
}
\arguments{
  \item{mu}{ Mean of the Gaussian}
  \item{sigma}{ Standard deviation of the Gaussian}
}
\details{No extra details  }
\value{
	The evaluated function.
}

\references{ Nason, G.P. (2005) On the sum of the Gaussian and Student's t
        random variables. \emph{Technical Report}, 05:01,
        Statistics Group, Department of Mathematics, University of Bristol.}
\author{ Guy Nason }


%\seealso{\code{\link{ic1}},\code{\link{is1}},\code{\link{dnormt3}}}
\examples{
#normt3ip(0,1)
#
# Answer should be 0.3183099 which is 1/pi
#
x <- 3
}
\keyword{ math }
