\name{tableplot}
\alias{tableplot}
\title{Visualization of large multivariate datasets.}
\usage{tableplot(dat, colNames=names(dat), sortCol=1, decreasing=TRUE, scales="auto",
    pals=list(1, 9, 3, 10), nBins=100, from=0, to=100,
    bias_brokenX=0.8, IQR_bias=5, plot=TRUE, ...)
}
\description{Visualization of large multivariate datasets.}
\details{A tableplot is a visualisation of a (large) multivariate dataset. Each column represents a variable and each row bin is an aggregate of a certain number of records. For numeric variables, a bar chart of the mean values is depicted. For categorical variables, a stacked bar chart is depicted of the proportions of categories. Missing values are taken into account. Also supports large ffdf datasets from the ff package. Use \code{\link{tableGUI}} to customize this function with a GUI.}
\alias{tableplot}
\value{\link{tabplot-object} (silent output)}
\keyword{visualization}
\arguments{\item{dat}{a \code{\link{data.frame}}, \code{\link{data.table}}, or an \code{\link[ff:ffdf]{ffdf}} object (required)}
\item{colNames}{character vector containing the names of the columns of \code{dat} that are visualized in the tablelplot. If omitted, all columns are visualized. All selected columns should be of class: numeric, integer, factor, or logical.}
\item{sortCol}{columns that are sorted. \code{sortCol} is either a vector of column names of a vector of indices of \code{colNames}}
\item{decreasing}{determines whether the columns are sorted decreasingly (TRUE) of increasingly (FALSE). \code{decreasing} can be either a single value that applies to all sorted columns, or a vector of the same length as \code{sortCol}.}
\item{scales}{determines the horizontal axes of the numeric variables in \code{colNames}, options: "lin", "log", and "auto" for automatic detection. If necessary, \code{scales} is recycled.}
\item{pals}{list of color palettes. Each list item is on of the following:
\itemize{
\item a index number between 1 and 16. In this case, the default palette is used with the index number being the first color that is used.
\item a palette name in \code{\link{tabplotPalettes}}, optionally with the starting color between brackets.
\item a palette vector
}
The items of \code{pals} are applied to the categorical variables of \code{colNames}. If necessary, \code{pals} is recycled.}
\item{nBins}{number of row bins}
\item{from}{percentage from which the data is shown}
\item{to}{percentage to which the data is shown}
\item{bias_brokenX}{parameter between 0 en 1 that determines when the x-axis of a numeric variable is broken. If minimum value is at least \code{bias_brokenX} times the maximum value, then X axis is broken. To turn off broken x-axes, set \code{bias_brokenX=1}.}
\item{IQR_bias}{parameter that determines when a logarithmic scale is used when \code{scales} is set to "auto". The argument \code{IQR_bias} is multiplied by the interquartile range as a test.}
\item{plot}{boolean, to plot or not to plot a tableplot}
\item{...}{arguments passed to \code{\link{plot.tabplot}}}
}
\examples{# load diamonds dataset from ggplot2
require(ggplot2)
data(diamonds)

# default tableplot
tableplot(diamonds)

# customized tableplot
tableplot(diamonds, colNames=c("carat", "cut", "color", "clarity", "price"), sortCol="price", from=0, to=5)}

