spectra2hyperSpec <- function(spectra) {
  label <- list()
  label$.wavelength <- spectra$unit[1]
  label$spc <- spectra$unit[2]
  
  hyper <- new("hyperSpec", spc = spectra$data, wavelength=spectra$freq, label=label)
  
  hyper
}