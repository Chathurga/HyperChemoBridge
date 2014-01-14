hyperSpec2Spectra <- function(hyperSpec, desc = "no description provided",
	names = NULL, groups = NULL, colors = NULL) {

  spectra <- list()
  spectra$freq <- hyperSpec@wavelength
  spectra$data <- hyperSpec@data$spc
  x <- dim(spectra$data)[1]
  spectra$names <- if (!is.null(names)) names else rep.int("Name?", x)
  spectra$groups <- if (!is.null(groups)) groups else factor(rep.int(1, x), labels = c("Grp?"))
  spectra$colors <- if (!is.null(colors)) colors else rep.int("black", x)
  spectra$sym <- rep.int(20L, x)
  spectra$alt.sym <- rep.int("a", x)

  # units are potentially a wee bit more complex, need to handle expressions
  ex1 <- ex2 <- FALSE
  ex1 <- is.expression(hyperSpec@label$.wavelength)
  ex2 <- is.expression(hyperSpec@label$spc)
#  print(ex1)
#  print(ex2)
  if (!ex1) unit1 <- hyperSpec@label$.wavelength
  if (!ex2) unit2 <- hyperSpec@label$spc
  if (ex1) {
  	unit1 <- toString(hyperSpec@label$.wavelength)
  	message("expression was stripped from the x-axis units")
  	}
  if (ex2) {
  	unit2 <- toString(hyperSpec@label$spc)
  	message("expression was stripped from the y-axis units")
  	}
#  print(unit1)
#  print(unit2)
  spectra$unit[1] <- unit1
  spectra$unit[2] <- unit2
#  print(spectra$unit)


  spectra$desc = desc
  class(spectra) <- "Spectra"
#  print(str(spectra))
  chkSpectra(spectra)
  spectra
}