\name{hyperSpec2Spectra}
\alias{hyperSpec2Spectra}
\alias{Spectra2hyperSpec}
\title{
Interconvert hyperSpec and ChemoSpec (Spectra) objects
}
\description{
These functions will interconvert hyperSpec and ChemoSpec (Spectra) objects (the internal structures which hold the data in each of these packages). This allows one to access the features of either package as desired. hyperSpec objects are S4 objects, while Spectra objects are S3.  If this doesn’t mean anything to you, it probably doesn’t matter, just use the functions!
}
\usage{
hyperSpec2Spectra(hyper, desc = “no “description provided, names = NULL, groups = NULL, colors = NULL)
Spectra2hyperSpec(Spectra)
}
\arguments{
  \item{hyper}{
An S4 class \code{hyperSpec} object as used by package \code{\link{hyperSpec}}.
}
  \item{desc}{
Character.  A description of the data set to be added to the \code{Spectra} object when it is created.
}
  \item{names}{
Character.  A vector of sample names, one for each spectrum, to be added to the \code{Spectra} object when it is created.

}
  \item{groups}{
Factor.  A vector of group classification terms, one for each spectrum, to be added to the \code{Spectra} object when it is created.

}
  \item{colors}{
Character.  A vector of colors, ones for each spectrum, to be added to the \code{Spectra} object when it is created.

}

  \item{Spectra}{
An object of S3 class \code{Spectra} as used by package \code{\link{ChemoSpec}}. This will be converted to an S4 class \code{hyperSpec} object as used by package \code{\link{hyperSpec}}.
}
}

\details{
For \code{hyperSpec2Spectra}, arguments \code{names}, \code{groups}, and \code{colors} must correspond to each other, and must have a length equal to the number of spectra/samples in the data set.
}

\value{
For \code{hyperSpec2Spectra}, an object of S3 class \code{Spectra} as used by package \code{\link{ChemoSpec}}.  For \code{Spectra2hyperspec},an S4 class \code{hyperSpec} object as used by package \code{\link{hyperSpec}}.  See the following for details of these objects: \code{\link{Spectra}}, \code{\link{hyperSpec-class}}.
}
\references{
\url{https://github.com/Chathurga/HyperChemoBridge}
}

\author{
Original by Conor McManus.  Maintained by Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}
\examples{
# Coming soon!
}
\keyword{ utilities }
