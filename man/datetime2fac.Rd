\name{datetime2fac}
\alias{datetime2fac}
\title{Create a factor vector out of a date-time vector}
\usage{
  datetime2fac(p, rng = range(p, na.rm = TRUE))
}
\arguments{
  \item{p}{date-time vector}

  \item{rng}{range of the factor.}
}
\value{
  A factor vector.
}
\description{
  Create a factor vector out of a date-time vector from
  class "POSIXt" or "Date".
}
\details{
  The range \code{rng} is cut according to different pretty
  rounded time periods. The cut with the number of levels
  that is closest to 6 is chosen. Vector \code{p} is cut
  accordingly. Values of \code{p} outside \code{rng} are
  translated to \code{NA}.
}
\note{
  \code{ff} vectors are not implemented yet
}

