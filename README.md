# higheReducation

`higheReducation` is an R package that provides a custom ggplot2 theme and colour palette for TASO-related visualisations.

## Installation

You can install the package from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("luke-arundel/higheReducation")
```

To install this package, you need to have `extrafont` and `tidyverse` installed. You can install them using the following commands:

```r
install.packages("extrafont")
install.packages("tidyverse")
```

## Usage

``` r
library(higheReducation)
library(ggplot2)

# Example plot using theme_taso
ggplot(mtcars, aes(wt, mpg, color = factor(gear))) + 
  geom_point(size = 4) + 
  theme_taso() + 
  labs(title = "This is my title", 
       subtitle = "This is my subtitle", 
       caption = "This is my caption") + 
  scale_y_continuous(expand = c(0, 0)) +
  scale_x_continuous(expand = c(0, 0)) + 
  scale_colour_taso()

# Accessing the colour palette
tasocolours

# Another example plot using theme_taso 
ggplot(mtcars, aes(factor(cyl))) + 
  geom_bar(fill = "#3b66bc") +  # tasoblue color
  theme_taso() + 
  theme(axis.title.x = element_text()) +
  labs(title = "Distribution of Cylinders",
       subtitle = "Using TASO custom color palette",
       x = "Number of Cylinders",
       y = "Count",
       caption = "Source: mtcars dataset") + 
  scale_y_continuous(expand = c(0, 0))
```

The colour palette includes:

-   tasoteal = "#07dbb3"

-   tasoblue = "#3b66bc"

-   tasogrey = "#e4e2d9"

-   tasolightgrey = "#edebe3"

-   tasopink = "#f9466c"

-   tasodarkgrey = "#485866"
