\name{tablePalettes}
\alias{tablePalettes}
\title{Show / get all palettes of the tabplot package}
\usage{
  tablePalettes(plot = TRUE)
}
\arguments{
  \item{plot}{Boolean that determines whether the palettes
  are plot.}
}
\value{
  list with palettes (silent output)
}
\description{
  All color palettes are shown and/or returned that can be
  used for tableplots.
}
\details{
  Qualitative palattes (for categorical variables):
  \itemize{ \item Set1 \item Set2 \item Set3 \item Set4
  \item Set5 \item Paired \item HCL1 \item HCL2 \item HCL3
  } The default palette, "Set1", is a color blind friendly
  palette (see Okabe and Ito, 2002). Palettes "Set2" to
  "Set5" and "Paired" are based on ColorBrewer palettes
  (Brewer et al., 2003). The HCL Palettes are based on the
  Hue-Chroma-Luminance color space model (see Zeileis et
  al., 2009).

  Sequential palettes (for numeric variables): \itemize{
  \item Blues \item Greens \item Greys } These palettes are
  taken from ColorBrewer (Brewer et al., 2003).
}
\references{
  \href{http://jfly.iam.u-tokyo.ac.jp/color/}{Okabe, M. and
  Ito, K. Color Universal Design (CUD) - How to make
  figures and presentations that are friendly to Colorblind
  people, 2002}

  \href{http://colorbrewer2.org/}{Brewer, Cynthia A.,
  Geoffrey W. Hatchard and Mark A. Harrower, 2003,
  ColorBrewer in Print: A Catalog of Color Schemes for
  Maps, Cartography and Geographic Information Science
  30(1): 5-32.}

  \href{http://statmath.wu.ac.at/~zeileis/papers/Zeileis+Hornik+Murrell-2009.pdf}{Zeileis,
  A., Hornik, K., and Murrell, P.  Escaping RGBland:
  Selecting colors for statistical graphics.  In
  Proceedings of Computational Statistics & Data Analysis.
  2009, 3259-3270.}
}
\keyword{color}
\keyword{palettes}

