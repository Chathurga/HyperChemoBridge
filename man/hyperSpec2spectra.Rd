\name{hyperSpec2spectra}
\alias{hyperSpec2spectra}
\title{
Convert a hyperSpec object to a ChemoSpec object
}
\description{
This function converts a \code{hyperSpec} object from the package of the same name, to a \code{Spectra} object as used in the \code{ChemoSpec} package.
}
\usage{
hyperSpec2spectra(hyperSpec, desc = "no description provided",
names = NULL, groups = NULL, colors = NULL)
}
\arguments{
  \item{hyperSpec}{
A \code{hyperSpec} object to be converted.
}
  \item{desc}{
Character.  A description of the data set.
}
  \item{names}{
Character.  A vector of sample names.
}
  \item{groups}{
Factor.  A vector of factors giving the sample memmbership.
}
  \item{colors}{
Character.  A vector of colors.
}
}
\value{
A \code{\link[ChemoSpec]{Spectra}} object.
}
\author{
Conor McManus.\cr
Maintainer: Bryan A. Hanson \email{hanson@depauw.edu}
}
\references{
\url{https://github.com/Chathurga/HyperChemoBridge}
}
\examples{
require("hyperSpec")
require("RColorBrewer")
flu # get a data set from hyperSpec
quinine <- hyperSpec2spectra(hyperSpec = flu, desc = "Quinine fluorescence calibration data from hyperSpec",
names = paste("flu", 1:6, sep = ""), groups = rep("calib", 6), colors = brewer.pal(6, "Set1"))
sumSpectra(quinine)
str(quinine)
}
\keyword{ utilities }
