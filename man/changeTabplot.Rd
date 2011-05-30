\name{changeTabplot}
\alias{changeTabplot}
\title{Changes a tabplot-object...}
\usage{changeTabplot(tab, colNames=sapply(tab$columns, function(col) col$name), flip=FALSE,
    pals=list())
}
\description{Changes a \link{tabplot-object}}
\details{Function to change the order of columns, to flip, and to change the palettes of a \link{tabplot-object}.}
\alias{changeTabplot}
\value{\link{tabplot-object}}
\arguments{\item{tab}{\link{tabplot-object}}
\item{colNames}{vector of names of the desired columns}
\item{flip}{logical, if TRUE then the plot is flipped vertically, i.e.\ the row bins are reversed}
\item{pals}{list of color palettes. Each list item is on of the following:
\itemize{
\item a index number between 1 and 16. In this case, the default palette is used with the index number being the first color that is used.
\item a palette name in \code{\link{tabplotPalettes}}, optionally with the starting color between brackets.
\item a palette vector
}}
}
\examples{# load diamonds dataset from ggplot2
require(ggplot2)
data(diamonds)

# assign tableplot as tabplot object
tab <- tableplot(diamonds, plot=FALSE)
 
# modify the tabplot object: reverse order of columns and customize palette
tab <- changeTabplot(tab, colNames=names(diamonds[1:7]), pals=list("Dark2", "Pastel1", gray(seq(0,1,length.out=8))))
 
# plot modified tabplot object
plot(tab)}

