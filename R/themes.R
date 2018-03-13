#' Denv's ggplot2 theme
#'
#' This function allows you to express your love of cats.
#' @param font Choose base font for theme, requires library(extrafont) - defauls to "Lato"
#' @param base.size Base size for text
#' @export
#' @examples
#' theme_denv()

theme_denv <- function(font = "Lato",
                       base.size = 12,
                       text.color = "gray20",
                       grid.color = "gray80",
                       background.color = "papayawhip",
                       legend.pos = "bottom") {
  theme_bw(base_size = base.size, base_family = font) +
    theme(
      legend.background = element_rect(fill = alpha("blue", 0.0)),
      legend.key = element_rect(fill = alpha("blue", 0.0), color = alpha("blue", 0.0)),
      legend.key.size = unit(1.5, "lines"),
      legend.title = element_text(size = base.size + 4, face = "bold"),
      legend.text = element_text(size = base.size + 2, face = "plain"),
      legend.margin = margin(0.5, 0, 0, 0),
      text = element_text(color = text.color),
      axis.title = element_text(size = base.size + 2, face = "bold", vjust = -0.5),
      axis.title.x = element_text(margin = margin(12, 0, 5, 0)),
      axis.text = element_text(size = base.size + 1, face = "plain"),
      axis.ticks = element_blank(),
      plot.margin = unit(c(0.75, 1, 0.5, 0.25), "cm"),
      plot.background = element_rect(fill = background.color),
      panel.background = element_rect(fill = background.color),
      strip.background = element_rect(fill = background.color),
      strip.text = element_text(size = base.size + 0.5, face = "bold"),
      panel.border = element_blank(),
      panel.grid.major = element_line(color = grid.color),
      panel.grid.minor = element_blank(),
      panel.spacing = unit(1.75, "lines"),
      plot.title = element_text(size = base.size * 2.2, vjust = 3, hjust = 0.5, face = "bold"),
      plot.subtitle = element_text(size = base.size * 1.5, vjust = 1, hjust = 0.5),
      plot.caption = element_text(size = base.size, vjust = -1, hjust = 0, face = "italic")
    )
}
