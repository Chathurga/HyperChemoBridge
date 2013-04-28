hyperSpec2spectra <- function(hyper, desc = "", names = NULL, groups = NULL, colors = NULL) {
  spectra <- list()
  spectra$desc = desc
  class(spectra) <- "Spectra"
  
  spectra$freq <- hyper@wavelength
  spectra$data <- hyper@data$spc
  spectra$unit <- c(toString(laser@label$.wavelength), toString(laser@label$spc))
  
  x <- dim(spectra$data)[1]
  spectra$names <- if (!is.null(names)) names else rep.int("", x)
  spectra$groups <- if (!is.null(groups)) groups else factor(rep.int(1, x), labels=c(""))
  spectra$colors <- if (!is.null(colors)) colors else rep.int("black", x)
  
  spectra$sym <- rep.int(0, x)
  spectra$alt.sym <- rep.int("", x)
  
  spectra
}