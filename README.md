## Installing hyperChemoBridge

NOTE: The repository is named HyperChemoBridge, but the package is `hyperChemoBridge` (note different capitalization).

### To install from Github:

````r
install.packages("remotes")
library("remotes")
install_github(repo = "Chathurga/HyperChemoBridge@master")
library("hyperChemoBridge")
````

If you use `"@some_other_branch"` you can get other branches that might be available.  They may or may not pass CRAN checks and thus may not install automatically using the method above.  Check the NEWS file to see what's up.

#### License Information

`hyperChemoBridge` is distributed under the GPL-3 license, as stated in the DESCRIPTION file.  For more info, see the [GPL site.](https://gnu.org/licenses/gpl.html)

Questions?  hanson@depauw.edu

## What's the Difference between hyperSpec & ChemoSpec?

The design of `hyperSpec` is based on a central data structure and methods for manipulating it in preparation for other analyses using functions from base `R` or other packages.  The design of `ChemoSpec`, on the other hand, is to provide wrappers to common statistical methods (such as PCA, HCA etc) that permit the user to analyze their data from within `ChemoSpec`.

For example, `hyperSpec` uses dedicated method dispatch which makes data handling very straightforward.  If, for instance, you want to take the log of your spectral data, `new_object <- log(object)` will take care of it.  `hyperSpec` automatically accesses just the spectral data contained in the larger structure, and takes the log of that part, then returns the entire object.  For `ChemoSpec`, you would have to dig into the object yourself to access the data matrix: `object$data <- log(object$data)`.  Another example would be that in `hyperSpec`, typing the name of the object gives you a summary of the object.  Doing so in `ChemoSpec` would write the object to the screen, not very desirable.  In `ChemoSpec`, you may wish to do `str(object)` or, better, `sumSpectra(object)`.

For statistical methods, `ChemoSpec` provides wrappers.  For  instance, to carry out PCA, you might choose `c_pcaSpectra` which handles most of the details of the `prcomp` object in the background.  In `hyperSpec`, you'll need to do some of the work yourself (see [Section 6.1](https://beleites.github.io/hyperSpec/articles/hyperSpec.html#6-data-analysis) for details).

Both packages include detailed documentation about functions as well as vignettes: [hyperSpec](https://cbeleites.github.io/hyperSpec/) [ChemoSpec](https://bryanhanson.github.io/ChemoSpec/)
