library(purrr)
library(dplyr)
library(ggplot2)
library(tribble)

# Twilight Wave
# Edna Andrade 1973

# Code shamelessly adapted from Miles Ott
# https://github.com/MilesOtt/recreation_thursday/blob/master/June_17_2021/Edna_Andrade_Twilight_Wave_Animate.Rmd


# data for the 12 waves
data <- tribble(
       ~b,      ~d,  ~color,
       -4,    -0.8, "#E1E4DF",
     -4.5,   -0.65, "#D4D7D6",
       -5,    -0.5, "#C7C7C7",
     -5.5,   -0.35, "#B8B3B9",
       -6,    -0.2, "#A99FA7",
     -6.5,   -0.05, "#92B1A4",
       -7,     0.1, "#A5BAB3",
     -7.5,    0.25,  "#B0C5BE",
      -8,      0.4,  "#C6D7CE",
     -8.5,    0.55, "#DCE3DB",
       -9,     0.7,  "#E7EDE6"
)

# create a dataframe then use it within geom_polygon
make_positions <- function(b,d,color) {
  
  df <- data.frame(
    y = c(-1,seq(-1,1, length.out=100),1),
    # multiply by 6 to get 3 full pi cycles
    x = c(0.3, sin(seq(b*pi, (b+6)*pi, length.out = 100))*.075, 0.3)+d
  )
  
  geom_polygon(data = df, aes(x = x, y = y), fill = color)
}

ggplot() + 
  theme_void() +
  theme(
    panel.background = element_rect(fill='#EBEBE4', colour='white')
  ) +
  pmap(data, make_positions) +
  coord_fixed() +
  geom_point(
    data = data.frame(
      x = -0.05,
      y = seq(-0.75,0.80, by = 0.3)
    ), aes(x = x, y = y), size = 10, color = "#FF9E3F"
  ) +
  scale_x_continuous(limits = c(-1,1), expand = c(0, 0)) +
  scale_y_continuous(limits = c(-1,1)) 

ggsave("edna.png", plot = plot, width = 2, height = 2)
