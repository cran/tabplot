\name{tableplot}
\alias{tableplot}
\title{Create a tableplot}
\usage{
  tableplot(dat, select, subset = NULL, sortCol = 1,
    decreasing = TRUE, nBins = 100, from = 0, to = 100,
    nCols = ncol(dat), scales = "auto",
    pals = list("Set1", "Set2", "Set3", "Set4"),
    colorNA = "#FF1414", numPals = "Blues",
    bias_brokenX = 0.8, IQR_bias = 5, select_string = NULL,
    subset_string = NULL, colNames = NULL, filter = NULL,
    plot = TRUE, ...)
}
\arguments{
  \item{dat}{a \code{\link{data.frame}},
  \code{\link{data.table}}, or an
  \code{\link[ff:ffdf]{ffdf}} object (required).}

  \item{select}{expression indicating the columns of
  \code{dat} that are visualized in the tablelplot Also
  column indices are supported. By default, all columns are
  visualized. Use \code{select_string} for character
  strings instead of expressions.}

  \item{subset}{logical expression indicing which rows to
  select in \code{dat} (as in \code{\link{subset}}). It is
  also possible to provide the name of a categorical
  variable: then, a tableplot for each category is
  generated. Use \code{subset_string} for character strings
  instead of an expressions.}

  \item{sortCol}{expression indication the column(s) that
  is(are) sorted. Also supports indices. Also character
  strings can be used, but this is discouraged for
  programming purposes (use indices instead).}

  \item{decreasing}{determines whether the columns are
  sorted decreasingly (\code{TRUE}) of increasingly
  (\code{FALSE}). \code{decreasing} can be either a single
  value that applies to all sorted columns, or a vector of
  the same length as \code{sortCol}.}

  \item{nBins}{number of row bins}

  \item{from}{percentage from which the data is shown}

  \item{to}{percentage to which the data is shown}

  \item{nCols}{the maximum number of columns per tableplot.
  If this number is smaller than the number of columns
  selected in \code{datNames}, multiple tableplots are
  generated, where each of them contains the sorted
  column(s).}

  \item{scales}{determines the horizontal axes of the
  numeric variables in \code{colNames}, options: "lin",
  "log", and "auto" for automatic detection. If necessary,
  \code{scales} is recycled.}

  \item{pals}{list of color palettes. Each list item is on
  of the following: \itemize{ \item a palette name in
  \code{\link{tablePalettes}}, optionally with the starting
  color between brackets. \item a palette vector } The
  items of \code{pals} are applied to the categorical
  variables of \code{colNames}. If necessary, \code{pals}
  is recycled.}

  \item{colorNA}{color for missing values}

  \item{numPals}{name(s) of the palette(s) that is(are)
  used for numeric variables ("Blues", "Greys", or
  "Greens"). Recycled if necessary.}

  \item{bias_brokenX}{parameter between 0 en 1 that
  determines when the x-axis of a numeric variable is
  broken. If minimum value is at least \code{bias_brokenX}
  times the maximum value, then X axis is broken. To turn
  off broken x-axes, set \code{bias_brokenX=1}.}

  \item{IQR_bias}{parameter that determines when a
  logarithmic scale is used when \code{scales} is set to
  "auto". The argument \code{IQR_bias} is multiplied by the
  interquartile range as a test.}

  \item{select_string}{character equivalent of the
  \code{select} argument (particularly useful for
  programming purposes)}

  \item{subset_string}{character equivalent of the
  \code{subset} argument (particularly useful for
  programming purposes)}

  \item{colNames}{deprecated; used in older versions of
  tabplot (prior to 0.12): use \code{select_string)}
  instead}

  \item{filter}{deprecated; used in older versions of
  tabplot (prior to 0.12): use \code{subset_string)}
  instead}

  \item{plot}{boolean, to plot or not to plot a tableplot}

  \item{...}{arguments passed to
  \code{\link{plot.tabplot}}}
}
\value{
  \code{\link{tabplot-object}} (silent output). If multiple
  tableplots are generated (which can be done by either
  setting \code{subset} to a categorical column name, or by
  restricting the number of columns with \code{nCols}),
  then a list of \code{\link{tabplot-object}s} is silently
  returned.
}
\description{
  A tableplot is a visualisation of (large) multivariate
  datasets. Each column represents a variable and each row
  bin is an aggregate of a certain number of records. For
  numeric variables, a bar chart of the mean values is
  depicted. For categorical variables, a stacked bar chart
  is depicted of the proportions of categories. Missing
  values are taken into account. Also supports large
  \code{\link[ff:ffdf]{ffdf}} datasets from the
  \code{\link[ff:ff]{ff}} package.
}
\examples{
# load diamonds dataset from ggplot2
require(ggplot2)
data(diamonds)

# default tableplot
tableplot(diamonds)

# customized tableplot
tableplot(diamonds, select=c(carat, cut, color, clarity, price), sortCol=price, from=0, to=5)

# apply filter
tableplot(diamonds, subset=price < 5000 & cut=='Premium')
tableplot(diamonds, subset=cut)


}
\keyword{visualization}

