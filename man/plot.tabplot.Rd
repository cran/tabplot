\name{plot.tabplot}
\alias{plot.tabplot}
\title{Plot a \link{tabplot-object}}
\usage{
  \method{plot}{tabplot} (x, fontsize = 8,
    legend.lines = 8,
    title = ifelse(length(x$filter) == 0, x$dataset, paste(x$dataset, " (", x$filter, ")", sep = "")),
    showTitle = FALSE, ...)
}
\arguments{
  \item{x}{\link{tabplot-object}}

  \item{fontsize}{the (maximum) fontsize}

  \item{legend.lines}{the number of lines preserved for the
  legend}

  \item{title}{title of the plot (shown if
  \code{showTitle==TRUE})}

  \item{showTitle}{show the title}

  \item{...}{arguments passed to other methods}
}
\description{
  Plot a \link{tabplot-object}
}

