#' Package (multiple) installing and loading function
#' 
#' The usePackages function takes a single command, a list of package names, and will install them, if not already installed, and then load them.
#' @param p A list of package names as a vector of quoted strings.
#' @keywords use pack
#' @export
#' @examples 
#' usePackage(c("ggplot2", "dplyr"))

usePackages <- function(p) {
  
  for (i in 1:length(p)) {
    
    if (!is.element(p[i], installed.packages()[, 1])) {
      
      message(paste("Package", p[i], "not found, installing..."))
      install.packages(p, dep = TRUE)
      
    }
    
    message(paste0("Loading Package ", p[i], "..."))
    require(p[i], character.only = TRUE)
    
  }
  
}