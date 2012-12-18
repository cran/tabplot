\name{bin_data}
\alias{bin_data}
\title{Bin data}
\usage{
  bin_data(p, sortCol = 1L, cols = seq_along(p$data),
    from = 0, to = 1, nbins = 100L, decreasing = FALSE)
}
\arguments{
  \item{p}{prepared dataset (see
  \code{\link{tablePrepare}})}

  \item{sortCol}{column on which the table will be sorted}

  \item{cols}{columns of the data that will be used.}

  \item{from}{lower boundary in quantiles}

  \item{to}{upper boundary in quantiles}

  \item{nbins}{number of bins}

  \item{decreasing}{sort decreasingly}
}
\description{
  Working horse for tableplot, does the actual binning
}

