spectra2hyperSpec <- function(Spectra) {
  label <- list()
  label$.wavelength <- Spectra$unit[1]
  label$spc <- Spectra$unit[2]
  
  hyper <- new("hyperSpec", spc = Spectra$data, wavelength = Spectra$freq, label = label)
  
  hyper
}