\name{tableSave}
\alias{tableSave}
\title{Save a tableplot}
\usage{
  tableSave(tab, filename = paste(tab$dataset, ".pdf", sep
  = ""), device = default_device(filename), path = NULL,
  scale = 1, width = par("din")[1], height = par("din")[2],
  dpi = 300, fontsize = 8, legend.lines = 8, title =
  tab$dataset, showTitle = FALSE, ...)
}
\arguments{
  \item{tab}{a \link{tabplot-object}}

  \item{filename}{filename with extention (pdf, eps, wmf,
  png, jpg, bmp, or tiff)}

  \item{device}{device, automatically extracted from
  filename extension}

  \item{path}{path to save to}

  \item{scale}{scaling factor}

  \item{width}{width (in inches)}

  \item{height}{height (in inches)}

  \item{dpi}{dpi to use for raster graphics}

  \item{fontsize}{the (maximum) fontsize}

  \item{legend.lines}{the number of lines preserved for the
  legend}

  \item{title}{title of the plot (shown if
  \code{showTitle==TRUE})}

  \item{showTitle}{show the title}

  \item{...}{other arguments passed to graphics device}
}
\description{
  Save a tableplot in pdf, eps, wmf, png, jpg, bmp, or tiff
  format.
}
\examples{
\dontrun{
	# load diamonds dataset from ggplot2
	require(ggplot2)
	data(diamonds)
	
	# default tableplot
	tab <- tableplot(diamonds)
	
	# save tableplot
	tableSave(tab, filename="diamonds.png")
}
}
\keyword{save}
\keyword{tableplot}

