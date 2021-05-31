library(ggplot2)

# Alfredo Hlito
# Curves and Straight Series
# 1948
# https://www.moma.org/collection/works/205953

green <- "#71A119"
red <- "#D5341B"
blue <- "#0F4999"
black <- "#2B2828"
yellow <- "#C5B856"
beige <- "#E5DECD"

nine <- data.frame(
  x1 = c(c(3,3,3,3,3), c(13,13,13,13)),
  y1 = c(c(-2,-6,-7.5,-9,-25), c(-2,2,3.5,5)),
  xend = c(c(5,5,5,5,5), c(15,15,15,15)),
  yend = c(c(-2,-6,-7.5,-9,-25), c(-2,2,3.5,5)),
  color = c(green, red, blue, black, red, red, green, blue, black)
)

p <- ggplot() +
  geom_segment(data = nine, aes(x = x1, y = y1, xend = xend, yend = yend), color = nine$color, size = 2) +
  geom_curve(aes(x = 5, y = -20, xend = 9, yend = 30), size = 2, color = yellow, curvature = 0.4) +
  geom_curve(aes(x = 9.4, y = -7, xend = 9.4, yend = -30), size = 2, color = blue, curvature = 0.4) +
  geom_segment(aes(x = 8, y = -2, xend = 13, yend = -20), size = 2) +
  theme_void() +
  theme(plot.margin=margin(-1,5,4,5,"cm")) +
  guides(color = FALSE) +
  theme(plot.background = element_rect(fill = beige, color = beige))

ggsave("figures/curves_and_straight.png", p, height = 10, width = 10)

