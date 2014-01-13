## How to install HyperChemoBridge

### To install from Github:

````r
install.packages("devtools")
library("devtools")
install_github(repo = "HyperChemoBridge", username = "chaturga", ref = "master")
library("HyperChemoBridge")
````
If you use `ref = "some_other_branch"` you can get other branches that might be available.  They may or may not pass CRAN checks and thus may not install automatically using the method above.  Check the NEWS file to see what's up.

### License Information

HyperChemoBridge is distributed under the GPL-3 license, as stated in the DESCRIPTION file.  For more info, see the [GPL site.](https://gnu.org/licenses/gpl.html)

Questions?  hanson@depauw.edu

## A Comparison of the R Packages hyperSpec & ChemoSpec

This page compares these two packages for your convenience.  This is not a comprehensive list of functions in each package, only a comparison of frequently needed tasks.  See the respective package vignettes, index pages and help pages for details.

[hyperSpec](http://CRAN.R-project.org/package=hyperSpec)
[ChemoSpec](http://CRAN.R-project.org/package=ChemoSpec)
[HyperChemoBridge](https://github.com/Chathurga/HyperChemoBridge)

A key difference between the two packages is that hyperSpec uses dedicated method dispatch.  If, for instance, you want to take the log of your spectral data, `new_object <- log(object)` will take care of it.  hyperSpec automatically accesses just the spectral data contained in the larger structure, and takes the log of that part, then returns the entire object.  For ChemoSpec, you would have to use `object$data <- log(object$data)`.  Another example would be that in hyperSpec, typing the name of the object gives you a summary of the object.  Doing so in the ChemoSpec would write the object to the screen, not very desirable.  In ChemoSpec, you may wish to do `str(object)` or `sumSpectra(object)`.

Another difference is that hyperSpec provides methods for creating data sets and manipulating them in preparation for other analyses chosen by the user, using functions from base R or other packages.  ChemoSpec provides wrappers to many other methods (such as PCA, HCA etc) that permit the user to analyze their data from within ChemoSpec.

task | hyperSpec | ChemoSpec
--- |---| ---
import data | `initialize` | `files2SpectraObject`
verify data integrity | `chk.hy` | `chkSpectra`
summarize data | type name_of_data_set | `sumSpectra`
baseline correct spectra | `spc.fit.poly` | `baselineSpec`
normalize spectral data | ??? | `normSpectra`
bin spectral data | `spc.bin` | `binBuck`
remove selected samples | see `?"["` | `removeSample`
remove selected frequencies | see `?"["` | `removeFreq`
remove selected groups | see `?"["` | `removeGroups`
split a data set into new groups | `split` | `splitSpectraGroups`
plot spectra by frequency | `plotspc, plotmap, plotmat, plotc    ` | `plotSpectra, specSurvey`
plot spectra as time series | `plotc` | *
compare different data sets | `Compare` | *
merge different data sets | `merge` | *

\* There is no function for this action, it will have to be done manually.

