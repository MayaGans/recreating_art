library(purrr)
library(dplyr)
library(ggplot2)
library(tribble)

# Twilight Wave
# Edna Andrade 1973

# -----------------------
# Data
# -----------------------
wave_data <-data.frame(
  b = rev(seq(-9,-4, by = 0.5)),
  d = seq(-0.8, 0.7, by = 0.15),
  color = c("#E1E4DF","#D4D7D6","#C7C7C7","#B8B3B9",
            "#A99FA7","#92B1A4","#A5BAB3","#B0C5BE",
            "#C6D7CE","#DCE3DB","#E7EDE6")
)

# manual insanity of making hacky arcs
curve_data <- data.frame(
  x = c(0.29,0.59,-0.31,-0.01,-0.91,-0.61,-0.9,-0.7,-0.3,-0.11,0.3,0.49),
  xend = c(0.6,0.8,0,0.2,-0.6,-0.4,-0.7,-0.39,-0.1,0.21,0.5,0.81),
  y = c(rep(c(-0.7,-0.9),3), rep(c(0.5,0.9), 3)),
  yend = c(rep(c(-0.9,-0.5),3), rep(c(0.9,0.7), 3)),
  curve = c(0.4,0.4,0.4,0.4,0.4,0.4,-0.5,-0.4,-0.38,-0.4,-0.38,-0.4),
  color = c("#B0C5BE","#E7EDE6","#B8B3B9","#A5BAB3", "#EBEBE4", "#C7C7C7",
            "#EBEBE4","#C7C7C7","#B8B3B9","#A5BAB3","#B0C5BE","#E7EDE6")
)



# -----------------------
# Functions
# -----------------------

make_waves <- function(b,d,color) {
  df <- data.frame(
    y = c(-1,seq(-1,1, length.out=100),1),
    # multiply by 6 to get 3 full pi cycles
    x = c(0.3, cos(seq(b*pi, (b+6)*pi, length.out = 100))*.075, 0.3)+d
  )
  geom_polygon(data = df, aes(x = x, y = y), fill = color)
}


make_curves <- function(x, xend, y, yend, color, curve) {
  geom_curve(aes(x = x, xend = xend, y = y, yend = yend),
             color = color,
             curvature = curve,
             size = 4)
}

# -----------------------
# Plot
# -----------------------

ggplot() + 
  theme_void() +
  theme(
    panel.background = element_rect(fill='#EBEBE4', colour='white')
  ) +
  pmap(data, make_waves) +
  pmap(curve_data, make_curves) +
  coord_fixed() +
  geom_point(
    data = data.frame(
      x = -0.05,
      y = seq(-0.75, 0.75, by = 0.25)
    ), aes(x = x, y = y), size = 10, color = "#FF9E3F",
  ) +
  scale_x_continuous(limits = c(-1,1), expand = c(0, 0)) +
  scale_y_continuous(limits = c(-1,1))
