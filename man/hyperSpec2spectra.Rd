% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hyperSpec2spectra.R
\name{hyperSpec2spectra}
\alias{hyperSpec2spectra}
\title{Convert a hyperSpec object to a ChemoSpec object}
\usage{
hyperSpec2spectra(
  hyperSpec,
  desc = "no description provided",
  names = NULL,
  groups = NULL,
  colors = NULL
)
}
\arguments{
\item{hyperSpec}{A \href{https://cbeleites.github.io/hyperSpec/reference/hyperSpec-class.html}{hyperSpec} object.}

\item{desc}{Character.  A description of the data set.}

\item{names}{Character.  A vector of sample names.}

\item{groups}{Factor.  A vector of factors giving the sample membership.}

\item{colors}{Character.  A vector of colors.}
}
\value{
A \code{\link[ChemoSpec]{Spectra}} object.
}
\description{
This function converts a \code{hyperSpec} object from the package of the same
name, to a \code{Spectra} object as used in the \code{ChemoSpec} package.
}
\examples{
require("hyperSpec")
require("RColorBrewer")
quinine <- hyperSpec2spectra(hyperSpec = flu,
  desc = "Quinine fluorescence calibration data from hyperSpec",
  names = paste("flu", 1:6, sep = ""),
  groups = rep("calib", 6),
  colors = brewer.pal(6, "Set1"))
sumSpectra(quinine)
str(quinine)

}
\author{
Conor McManus
}
\keyword{utilities}
