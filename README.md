# higheReducation

`higheReducation` is an R package that provides a custom ggplot2 theme and colour palette for TASO-related visualisations in higher education.

## Installation

You can install the package from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("yourusername/higheReducation")
```

## Usage

``` r
library(higheReducation)
library(ggplot2)

# Example plot using theme_taso
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  theme_taso()

# Accessing the colour palette
taso_colours()
```

The colour palette includes:

-   tasoteal = "#07dbb3"

-   tasoblue = "#3b66bc"

-   tasogrey = "#e4e2d9"

-   tasolightgrey = "#edebe3"

-   tasopink = "#f9466c"

-   tasodarkgrey = "#485866"
