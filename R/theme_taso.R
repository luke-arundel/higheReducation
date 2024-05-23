#' Apply Taso Theme to ggplot2
#'
#' @return A ggplot2 theme object
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() +
#'   theme_taso()
#' @export
theme_taso <- function() {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      text = ggplot2::element_text(size = 12), # Default text size for all text elements
      plot.title.position = "plot", # Aligns plot title to whole plot
      plot.title = ggplot2::element_text(face = "bold", size = 12),
      plot.caption.position = "plot", # Aligns caption to the left of the plot
      plot.caption = ggplot2::element_text(hjust = 0, size = 9.8, face = "italic"),
      plot.background = ggplot2::element_rect(fill = "white", color = NA), # Background colour
      plot.margin = ggplot2::margin(0, 0.25, 0, 0, "in"), # Adding margin
      panel.border = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = "white", color = NA),
      axis.title = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(colour = "#5F5F5F", linewidth = 0.5),
      axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 7, unit = "pt")), # Increase top margin to move text down
      axis.ticks.length = ggplot2::unit(0.3, "cm"),
      axis.ticks.x = ggplot2::element_line(colour = "#5F5F5F", linewidth = 0.5) # Increase the length of ticks
    ) 
}
