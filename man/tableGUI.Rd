\name{tableGUI}
\alias{tableGUI}
\title{A graphical user interface for customizing a tableplot visualization.}
\usage{tableGUI(dat, colNames=names(dat), sortCol=1, decreasing=TRUE, scales="auto",
    pals=list(1, 9, 3, 10), nBins=100, from=0, to=100)
}
\description{A graphical user interface for customizing a tableplot visualization.}
\details{A GUI by which tableplots can be created. General work flow: 1) a loaded dataset is selected, 2) variables of this dataset are selected, 3) sorted variable(s) are chosen, the number of row bins is set, etc. It is also possible to cast numerical vector to a factor vector (by means of the function \code{\link{num2fac}}). The GUI is started empty by calling it without any arguments.}
\alias{tableGUI}
\arguments{\item{dat}{either a \link{tabplot-object} or a dataset (see \code{\link{tableplot}})}
\item{colNames}{see \code{\link{tableplot}}}
\item{sortCol}{see \code{\link{tableplot}}}
\item{decreasing}{see \code{\link{tableplot}}}
\item{scales}{see \code{\link{tableplot}}}
\item{pals}{see \code{\link{tableplot}}}
\item{nBins}{see \code{\link{tableplot}}}
\item{from}{see \code{\link{tableplot}}}
\item{to}{see \code{\link{tableplot}}}
}
\examples{\dontrun{
  tableGUI()
}}

