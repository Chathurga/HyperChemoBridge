### How to install hyperChemoBridge

NOTE: The repository is named HyperChemoBridge, but the package is hyperChemoBridge (note different capitalization).

#### To install from Github:

````r
install.packages("devtools")
library("devtools")
install_github(repo = "Chaturga/HyperChemoBridge@master")
library("hyperChemoBridge")
````
If you use `"@some_other_branch"` you can get other branches that might be available.  They may or may not pass CRAN checks and thus may not install automatically using the method above.  Check the NEWS file to see what's up.

#### License Information

hyperChemoBridge is distributed under the GPL-3 license, as stated in the DESCRIPTION file.  For more info, see the [GPL site.](https://gnu.org/licenses/gpl.html)

Questions?  hanson@depauw.edu

### A Comparison of the R Packages hyperSpec & ChemoSpec

This page compares these two packages for your convenience.  This is not a comprehensive list of functions in each package, only a comparison of frequently needed tasks.  See the respective package vignettes, index pages and help pages for details.

[hyperSpec](http://hyperSpec.r-forge.r-project.org/)
[ChemoSpec](http://CRAN.R-project.org/package=ChemoSpec)
[HyperChemoBridge](https://github.com/Chathurga/HyperChemoBridge)

The focus of hyperSpec is on data handling: it provides methods for manipulating data in preparation for other analyses using functions from base R or other packages.  The focus of ChemoSpec, on the other hand, is to provide wrappers to common statistical methods (such as PCA, HCA etc) that permit the user to analyze their data from within ChemoSpec.

For example, hyperSpec uses dedicated method dispatch which makes data handling very straightforward.  If, for instance, you want to take the log of your spectral data, `new_object <- log(object)` will take care of it.  hyperSpec automatically accesses just the spectral data contained in the larger structure, and takes the log of that part, then returns the entire object.  For ChemoSpec, you would have to dig into the object yourself: `object$data <- log(object$data)`.  Another example would be that in hyperSpec, typing the name of the object gives you a summary of the object.  Doing so in the ChemoSpec would write the object to the screen, not very desirable.  In ChemoSpec, you may wish to do `str(object)` or, better, `sumSpectra(object)`.

For statistical methods, ChemoSpec provides wrappers.  For  instance, to carry out PCA, you might choose `classPCA` which handles most of the details of the prcomp object in the background.  In hyperSpec, you'll need to do some of the work yourself (see Section 4.5 of the vignette on the chondro data set, via `vignette("chondro")`.

The following table does not cover every option in each package by any means.  See the indices for each package for complete coverage.

task | hyperSpec | ChemoSpec
--- |---| ---
package overview & index | `package?hyperSpec` | `?ChemoSpec`
vignettes | `vignette("topic")` topics: baseline, chondro, fileio, flu, introduction, laser, plotting | `vignette("ChemoSpec")`
import data | see `vignette("fileio")`  | `files2SpectraObject`
verify data integrity | `chk.hy` | `chkSpectra`
summarize data | type name_of_data_set | `sumSpectra`
baseline correct spectra | `spc.fit.poly` | `baselineSpec`
normalize spectral data | `sweep(spc, 1, rowMeans(spc), "/")` | `normSpectra`
bin spectral data | `spc.bin` | `binBuck`
align spectral data | * | `clupaSpectra`
remove selected samples | see `?"["` | `removeSample`
remove selected frequencies | see `?"["` | `removeFreq`
remove selected groups | see `?"["` | `removeGroups`
split a data set into new groups | `split` | `splitSpectraGroups`
plot spectra by frequency | `plotspc, plotmap, plotmat, plotc    ` | `plotSpectra, specSurvey`
plot spectra as time series | `plotc` | *
compare different data sets | `Compare` | *
merge different data sets | `merge` | *

\* There is no function for this action, it will have to be done manually.
