\name{tableChange}
\alias{tableChange}
\title{Change a \link{tabplot-object}}
\usage{
  tableChange(tab, colNames = sapply(tab$columns,
  function(col) col$name), flip = FALSE, pals = list(),
  colorNA = NULL, numPals = NULL)
}
\arguments{
  \item{tab}{\link{tabplot-object}}

  \item{colNames}{vector of names of the desired columns}

  \item{flip}{logical, if TRUE then the plot is flipped
  vertically, i.e.\ the row bins are reversed}

  \item{pals}{list of color palettes. Each list item is on
  of the following: \itemize{ \item a palette name in
  \code{\link{tablePalettes}}, optionally with the starting
  color between brackets. \item a palette vector }}

  \item{colorNA}{color for missing values}

  \item{numPals}{name(s) of the palette(s) that is(are)
  used for numeric variables ("Blues", "Greys", or
  "Greens"). Recycled if necessary.}
}
\value{
  \link{tabplot-object}
}
\description{
  Change the order of columns, flip, and change the
  palettes of a \link{tabplot-object}.
}
\examples{
# load diamonds dataset from ggplot2
require(ggplot2)
data(diamonds)

# assign tableplot as tabplot object
tab <- tableplot(diamonds, plot=FALSE)
 
# modify the tabplot object: reverse order of columns and customize palette
tab <- tableChange(tab, colNames=names(diamonds[1:7]), pals=list("Set4", "Set3", gray(seq(0,1,length.out=8))))
 
# plot modified tabplot object
plot(tab)
}

