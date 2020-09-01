#'
#' Convert a Spectra object to a hyperSpec object
#'
#' This function converts a \code{Spectra} object as used the in the \code{ChemoSpec}
#' package to a \code{hyperSpec} object as used in the package of the same name.
#'
#' @param Spectra A \code{\link[ChemoSpec]{Spectra}} object.
#'
#' @return A \code{\link[=setClass]{hyperspec}} object.
#'
#' @keywords utilities
#' @author Conor McManus
#' @export
#' @importFrom methods new
#' 
#' @examples
#' require("hyperSpec")
#' require("ChemoSpec")
#' data(SrE.IR) # data set from ChemoSpec
#' IR <- spectra2hyperSpec(SrE.IR)
#' IR
#' str(IR)
#' 
spectra2hyperSpec <- function(Spectra) {
  freq <- .wavelength <- spc <- unit <- NA
  label <- list()
  label$.wavelength <- Spectra$unit[1]
  label$spc <- Spectra$unit[2]
  
  hyper <- new("hyperSpec", spc = Spectra$data, wavelength = Spectra$freq, label = label)
  
  hyper
}
