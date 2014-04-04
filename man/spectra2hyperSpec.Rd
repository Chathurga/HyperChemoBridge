\name{spectra2hyperSpec}
\alias{spectra2hyperSpec}
\title{
Convert a Spectra object to a hyperSpec object
}
\description{
This function converts a \code{Spectra} object as used the in the \code{ChemoSpec} package to a \code{hyperSpec} object as used in the package of the same name.
}
\usage{
spectra2hyperSpec(Spectra)
}
\arguments{
  \item{Spectra}{
A \code{\link[ChemoSpec]{Spectra}} object.
}
}
\value{
A \code{\link[hyperSpec:hyperSpec-class]{hyperSpec}} object.
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
require("ChemoSpec")
data(SrE.IR) # data set from ChemoSpec
IR <- spectra2hyperSpec(Spectra = SrE.IR)
IR
str(IR)
}
\keyword{ utilities }
