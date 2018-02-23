# utilityScripts
### Useful functions for easier R use

#### Installation
To install the functions from this package simply enter the follow into the R console:
</br>
<code>install.packages("devtools")</code>
</br>
<code>require(devtools)</code>
</br>
<code>devtools::install_github(repo = "AFMSAnalytics/utilityScripts")</code>
</br>

You should receive a series of messages with "In R CMD INSTALL" at the end and no error messages. If you receive an error, please let the dev team know here on GitHub. If you receive the message above you can load the library as usual and start using the functions:

<code>library(utilityScripts)</code>

#### Functions

##### usePackage()
This function allows the user to enter a package name in quotes, e.g. "ggplot2", and have R evaluate whether the package is already installed or not. If it is not already installed, the function will install it and then load it, otherwise the function will simply load the package.

##### usePackages()
This function allows the user to enter a list of package names in quotes, e.g. c("ggplot2", "dplyr"), and have R evaluate whether the packages are already installed or not. If they is not already installed, the function will install those missing and then load them, otherwise the function will simply load the packages that are not missing.

##### multiPlot()
This function allows the user to work more easily with multiple plot objects. Sometimes one wants to quickly produce a single pane of plots with 4 or 6 or 8 plots in it. This function takes a list of plot objects in R, either as c(plot1, plot2, ..., plotn) or as plot1, plot2, ..., plotn, as well as a column argument with a number of columns of plots the pane should have. It then produces the plot matrix in a single pane according to the input arguments.
