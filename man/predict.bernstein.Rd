% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bernstein_polynomials.R
\name{predict.bernstein}
\alias{predict.bernstein}
\title{Evaluate Bernstein approximations on data.}
\usage{
\method{predict}{bernstein}(object, D, ...)
}
\arguments{
\item{object}{an S3 object of type \code{bernstein}.}

\item{D}{either a numeric vector or matrix, all values in \code{[0,1]}.
If numeric then length should be \code{object$dims} unless the latter is
1 in which case the length can be arbitrary. If a matrix then the number
of columns should match \code{object$dims}.}

\item{\dots}{additional arguments.}
}
\value{
a numeric vector of scalar real evaluations.
}
\description{
Evaluates a given S3 object of type \code{bernstein} on given
data \code{D}.
}
\examples{
f <- function(x) x * sin(x*10)
b <- bernstein(f, dims = 1)
xs <- seq(from=0, to=1, length=50)
mean((f(xs) - predict(b,xs))^2)

}
\references{
Francesco Aldà and Benjamin I. P. Rubinstein. "The Bernstein Mechanism:
  Function Release under Differential Privacy", in Proceedings of the 31st
  AAAI Conference on Artificial Intelligence (AAAI'2017), pp. 1705-1711,
  Feb 2017.
}
