\name{plot.tabplot}
\alias{plot.tabplot}
\title{Plot a \link{tabplot-object}}
\usage{
  \method{plot}{tabplot} (x, fontsize = 10,
    legend.lines = 8, title = NULL, showTitle = NULL,
    fontsize.title = 14, ...)
}
\arguments{
  \item{x}{\link{tabplot-object}}

  \item{fontsize}{the (maximum) fontsize}

  \item{legend.lines}{the number of lines preserved for the
  legend}

  \item{title}{title of the plot (shown if
  \code{showTitle==TRUE})}

  \item{showTitle}{show the title. By default \code{FALSE},
  unless a \code{title} is given.}

  \item{fontsize.title}{the fontsize of the title}

  \item{...}{arguments passed to other methods}
}
\description{
  Plot a \link{tabplot-object}
}

