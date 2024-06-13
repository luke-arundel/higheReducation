# higheReducation

`higheReducation` is an R package by Luke Arundel that provides a custom ggplot2 theme and colour palette for TASO-related visualisations.

## Installation

You can install the package from GitHub:

``` r
# install.packages("devtools")
devtools::install_github("taso-he/higheReducation")
```

To install this package, you need to have `extrafont` and `tidyverse` installed. You can install them using the following commands:

```r
install.packages("extrafont")
install.packages("tidyverse")
```

## Usage

``` r
library(tidyverse)
library(extrafont)
library(palmerpenguins)
library(higheReducation)

# Bar chart example 

ggplot(penguins, aes(x = sex, fill = species)) +
  geom_bar(alpha = 0.8) +
  scale_fill_manual(values = c("#3b66bc","#07ddb3","#f9466c"), guide = "none") + 
  theme_taso() +
  facet_wrap(~species, ncol = 1) +
  coord_flip() + 
  scale_y_continuous(expand = c(0,0)) + 
  labs(title = "Count of penguins for each species/sex",
       caption = "Source: palmerpenguins package")

# Jitter plot example: bill length by species
ggplot(data = penguins, aes(x = species, y = bill_length_mm)) +
  theme_taso() +
  geom_jitter(aes(color = species),
              width = 0.1, 
              alpha = 0.7,
              show.legend = FALSE) +
  scale_color_manual(values = c("#3b66bc","#07ddb3","#f9466c")) + 
  labs(title = "Bill length of different penguin species", 
       caption = "Source: palmerpenguins package")

# Histogram example: flipper length by species
ggplot(data = penguins, aes(x = flipper_length_mm)) +
  theme_taso() +
  geom_histogram(aes(fill = species), alpha = 0.5, position = "identity") +
  scale_fill_manual(values = c("#3b66bc","#07ddb3","#f9466c")) +
  scale_y_continuous(expand = c(0,0)) + 
  scale_x_continuous(expand = c(0,0)) + 
  labs(title = "Count of flipper length by different penguin species",
       x = "Flipper length", 
       caption = "Source: palmerpenguins package") + 
  theme(axis.title.x = element_text())
```

The colour palette includes:

-   **tasoteal** = "#07dbb3"

-   **tasoblue** = "#3b66bc"

-   **tasogrey** = "#e4e2d9"

-   **tasolightgrey** = "#edebe3"

-   **tasopink** = "#f9466c"

-   **tasodarkgrey** = "#485866"
