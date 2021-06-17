library(purrr)
library(dplyr)
library(ggplot2)
library(tribble)

# Twilight Wave
# Edna Andrade 1973


# data for the 12 waves
# I can play even more code golf here
# But I like seeing the numbers and changing them iteratively
data <- tribble(
   ~a,    ~b,   ~c,   ~d,  ~color,
    1,    -4,    2,  -0.8, "#E1E4DF",
    1,  -4.5,  1.5, -0.65, "#D4D7D6",
    1,    -5,    1,  -0.5, "#C7C7C7",
    1,  -5.5,  0.5, -0.35, "#B8B3B9",
    1,    -6,    0,  -0.2, "#A99FA7",
    1,  -6.5, -0.5, -0.05, "#92B1A4",
   0.5,    -7,   -1,   0.1, "#A5BAB3",
   0.5,  -7.5, -1.5,  0.25, "#B0C5BE",
   0.5,    -8,   -2,   0.4, "#C6D7CE",
   0.25,  -8.5, -2.5,  0.55, "#DCE3DB",
   0.3,    -9,   -3,   0.7, "#E7EDE6"
)

# create a dataframe then use it within geom_polygon
make_positions <- function(a,b,c,d,e,color) {
  
  df <- data.frame(
    y = c(-1,seq(-1,1, length.out=100),1),
    x = c(a, cos(seq(b*pi, c*pi, length.out = 100))*.075, a)+d
  )
  
  geom_polygon(data = df, aes(x = x, y = y), fill = color)
}

ggplot() + 
  theme_void() +
  theme(panel.background = element_rect(fill='#EBEBE4', colour='white')) +
  pmap(data, make_positions) +
  geom_point(
    data = data.frame(
      x = -0.05,
      y = seq(-0.80,0.80, by = 0.3)
    ), aes(x = x, y = y), size = 10, color = "#FF9E3F"
  ) +
  coord_fixed() +
  scale_x_continuous(limits = c(-1,1), expand = c(0, 0)) +
  scale_y_continuous(limits = c(-1,1), expand = c(0, 0))
