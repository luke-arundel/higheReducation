# R/taso_colours.R

#' TASO Custom Color Palette
#'
#' This vector defines the custom color palette for TASO.
#'
#' @export
tasocolours <- c(
  "tasoblue" = "#3b66bc",
  "tasoteal" = "#07dbb3",
  "tasopink" = "#f9466c",
  "tasodarkgrey" = "#485866",
  "tasogrey" = "#e4e2d9",
  "tasolightgrey" = "#edebe3"
)

#' Create a custom color palette function
#'
#' This function returns a function that generates a color palette of up to six colours.
#'
#' @param fill Logical. If TRUE, the palette is used for fill colours. Defaults to TRUE.
#' @return A function that takes a single parameter, `n`, the number of colours needed.
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(gear))) +
#'   geom_point(size = 4) +
#'   scale_color_manual(values = taso_pal()(3)) +
#'   theme_minimal() +
#'   labs(title = "Custom TASO Theme Example",
#'        subtitle = "Using a custom color palette",
#'        x = "Weight",
#'        y = "Miles per Gallon")
#' @export
taso_pal <- function(fill = TRUE) {
  colours <- tasocolours
  max_n <- length(colours)
  
  f <- function(n = max_n) {
    if (n > max_n) {
      warning("Number of colours requested exceeds the number of colours in the palette. Using max_n colours.")
      n <- max_n
    }
    i <- switch(as.character(n),
                "1" = "tasoblue",
                "2" = c("tasoblue", "tasoteal"),
                "3" = c("tasoblue", "tasoteal", "tasopink"),
                "4" = c("tasoblue", "tasoteal", "tasopink", "tasodarkgrey"),
                "5" = c("tasoblue", "tasoteal", "tasopink", "tasodarkgrey", "tasogrey"),
                c("tasoblue", "tasoteal", "tasopink", "tasodarkgrey", "tasogrey", "tasolightgrey"))
    unname(colours[i][seq_len(n)])
  }
  
  attr(f, "max_n") <- max_n
  f
}

#' Get TASO colours without specifying number
#'
#' This function returns the custom TASO colours mapped to the levels of a factor.
#'
#' @param levels A character vector of levels for which colours are needed.
#' @return A named character vector of colours.
#' @examples
#' levels <- c("A", "B", "C", "D")
#' taso_colours(levels)
#' @export
taso_colours <- function(levels) {
  n <- length(levels)
  colours <- taso_pal()(n)
  names(colours) <- levels
  colours
}

#' Custom ggplot2 color scale using TASO colours
#'
#' This function creates a ggplot2 color scale using the TASO custom colours.
#'
#' @param ... Other arguments passed to `scale_color_manual`.
#' @return A ggplot2 scale object.
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(gear))) +
#'   geom_point(size = 4) +
#'   scale_colour_taso() +
#'   theme_minimal() +
#'   labs(title = "Custom TASO Theme Example",
#'        subtitle = "Using a custom color palette",
#'        x = "Weight",
#'        y = "Miles per Gallon")
#' @export
scale_colour_taso <- function(...) {
  scale_color_manual(values = taso_pal()(6), ...)
}

#' @importFrom ggplot2 scale_color_manual
#' @importFrom ggplot2 element_text
NULL
