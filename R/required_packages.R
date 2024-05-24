# R/required_packages.R

#' Required Packages
#'
#' A function to list required packages.
#'
#' @return A character vector of required packages.
#' @export
required_packages <- function() {
  c("extrafont", "tidyverse")
}

.onAttach <- function(libname, pkgname) {
  pkgs <- required_packages()
  missing_pkgs <- pkgs[!sapply(pkgs, requireNamespace, quietly = TRUE)]
  if (length(missing_pkgs) > 0) {
    stop(paste("The following required packages are not installed: ", paste(missing_pkgs, collapse = ", "), ". Please install them before using this package."))
  }
}
