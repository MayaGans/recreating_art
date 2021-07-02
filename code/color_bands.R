library(ggplot2)
library(ggforce)
library(purrr)
library(magrittr)

# Sol Lewitt Color Bands

colors <- list(
  orange = "#FE7B11",
  blue = "#4B9EE8",
  yellow = "#FFEF01",
  red = "#EF1318",
  green = "#36B455",
  purple = "#8543A4"
)

# black square outline used for each of the 8 pieces
square <- geom_rect(data = data.frame(xmin = 0, ymin = 0, xmax = 1, ymax = -10), 
          aes(xmin = xmin,
              xmax = xmax,
              ymin = ymin,
              ymax = ymax),
          color = "black", size = 3, alpha = 0) 

# ------------------------
# Plot 1
# ------------------------

left <- data.frame(
  x_start = seq(from = 0, to = 1, length.out = 32),
  y_start = 0,
  x_end = 0,
  y_end = -seq(from = 0, to = 1, length.out = 32)*10,
  color = sample(names(colors), 32, replace = TRUE)
) %>%
  purrr::pmap(., ~geom_segment(aes(x = ..1, y = ..2, xend = ..3, yend = ..4,color = colors[..5]), size = 3))

right <- data.frame(
  x_start = seq(from = 0.5, to = 1, length.out = 22),
  y_start = 0,
  x_end = seq(from = 0.5, to = 1, length.out = 22),
  y_end = seq(from = -5, to = -10, length.out = 22),
  color = sample(names(colors), 22, replace = TRUE)
) %>%
  purrr::pmap(., ~geom_segment(aes(x = ..1, y = ..2, xend = ..3, yend = ..4,color = colors[..5]), size = 3))


bottom <- purrr::map2(seq(10,500, length.out = 90), 
                      sample(names(colors), 90, replace = TRUE), 
                      ~geom_point(data = data.frame(x = 0.5, y = -5), 
                                  aes(x,y, color = colors[.y]), 
                                  size = .x))
outline <- data.frame(
  x_start = c(0.5,0,1),
  y_start = c(0,-10,-10),
  x_end = c(0.5,0.5,0.5),
  y_end = c(-5,-5,-5)
) %>%
  purrr::pmap(., ~geom_segment(aes(x = ..1, y = ..2, xend = ..3, yend = ..4), size = 3))


ggplot() +
  rev(bottom) +
  left +
  right +
  outline +
  square +
  coord_cartesian(clip = "on", ylim=c(-10,0), xlim=c(0,1), expand = FALSE) +
  theme_void()

# 2

# 3

# 4

# 5

# 6

# 7

# 8
