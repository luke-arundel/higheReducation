% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_taso.R
\name{theme_taso}
\alias{theme_taso}
\title{Apply Taso Theme to ggplot2}
\usage{
theme_taso()
}
\value{
A ggplot2 theme object.
}
\description{
This function applies the Taso theme to ggplot2 plots.
}
\examples{
library(ggplot2)
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  theme_taso()
}
