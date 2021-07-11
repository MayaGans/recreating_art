library(ggplot2)
library(ggforce)

# https://www.tate.org.uk/art/artworks/riley-hesitate-t04132
# Bridget Riley
# Hesitate
# 2020

ggplot() +

  # even rows (when a = 1 for first 12 rows)
  # x: start with 0 and go to 48 by 4
  # y: start with 0 and goes to _ by 4
  geom_ellipse(aes(x0 = 0, y0 = 0, a = 1, b = 1, angle = pi),  fill = "#D9D7D8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4, y0 = 0, a = 1, b = 1, angle = pi),  fill = "#D8D6D7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8, y0 = 0, a = 1, b = 1, angle = pi),  fill = "#CECED0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 0, a = 1, b = 1, angle = pi), fill = "#C0C1C5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 0, a = 1, b = 1, angle = pi), fill = "#B0B1B6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 0, a = 1, b = 1, angle = pi), fill = "#93969B", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 0, a = 1, b = 1, angle = pi), fill = "#797C81", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 0, a = 1, b = 1, angle = pi), fill = "#67686C", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 0, a = 1, b = 1, angle = pi), fill = "#57585C", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 0, a = 1, b = 1, angle = pi), fill = "#4A4B4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 0, a = 1, b = 1, angle = pi), fill = "#3F4342", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 0, a = 1, b = 1, angle = pi), fill = "#434446", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 0, a = 1, b = 1, angle = pi), fill = "#424345", color = "#F1ECE6") +

  # odd rows (when a = 1 for first 12 rows)
  # x: start with 2 and go to 48 by 4
  # y: start with 2 and goes to _ by 4
  geom_ellipse(aes(x0 = 2, y0 = 2, a = 1, b = 1, angle = pi),  fill = "#DCDADB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6, y0 = 2, a = 1, b = 1, angle = pi),  fill = "#D9D7DA", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 2, a = 1, b = 1, angle = pi), fill = "#D0D0D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 2, a = 1, b = 1, angle = pi), fill = "#C1C2C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 2, a = 1, b = 1, angle = pi), fill = "#B1B2B7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 2, a = 1, b = 1, angle = pi), fill = "#98999D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 2, a = 1, b = 1, angle = pi), fill = "#76777B", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 2, a = 1, b = 1, angle = pi), fill = "#68696D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 2, a = 1, b = 1, angle = pi), fill = "#57585D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 2, a = 1, b = 1, angle = pi), fill = "#4C4D51", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 2, a = 1, b = 1, angle = pi), fill = "#454648", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 2, a = 1, b = 1, angle = pi), fill = "#454547", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0, y0 = 4, a = 1, b = 1,  angle = pi), fill = "#D1CFD2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4, y0 = 4, a = 1, b = 1,  angle = pi), fill = "#DBD9DC", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8, y0 = 4, a = 1, b = 1,  angle = pi), fill = "#D9D7DA", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 4, a = 1, b = 1, angle = pi), fill = "#D0D0D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 4, a = 1, b = 1, angle = pi), fill = "#C1C0C5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 4, a = 1, b = 1, angle = pi), fill = "#B1B2B7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 4, a = 1, b = 1, angle = pi), fill = "#96999E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 4, a = 1, b = 1, angle = pi), fill = "#7C7D82", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 4, a = 1, b = 1, angle = pi), fill = "#66696E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 4, a = 1, b = 1, angle = pi), fill = "#56575B", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 4, a = 1, b = 1, angle = pi), fill = "#4D4E52", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 4, a = 1, b = 1, angle = pi), fill = "#474749", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 4, a = 1, b = 1, angle = pi), fill = "#464648", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2, y0 = 6, a = 1, b = 1,  angle = pi), fill = "#D4D2D7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6, y0 = 6, a = 1, b = 1,  angle = pi), fill = "#DCDADD", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 6, a = 1, b = 1, angle = pi), fill = "#D9D7DA", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 6, a = 1, b = 1, angle = pi), fill = "#CDCDCF", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 6, a = 1, b = 1, angle = pi), fill = "#C1C0C5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 6, a = 1, b = 1, angle = pi), fill = "#B1B2B7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 6, a = 1, b = 1, angle = pi), fill = "#98999E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 6, a = 1, b = 1, angle = pi), fill = "#7D7D87", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 6, a = 1, b = 1, angle = pi), fill = "#6A6B70", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 6, a = 1, b = 1, angle = pi), fill = "#58595D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 6, a = 1, b = 1, angle = pi), fill = "#474749", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 6, a = 1, b = 1, angle = pi), fill = "#464648", color = "#F1ECE6") + 

  geom_ellipse(aes(x0 = 0,  y0 = 8, a = 1, b = 1, angle = pi), fill = "#B3B4B9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 8, a = 1, b = 1, angle = pi), fill = "#D3D1D4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 8, a = 1, b = 1, angle = pi), fill = "#DDDBDE", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 8, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 8, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 8, a = 1, b = 1, angle = pi), fill = "#C1C0C5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 8, a = 1, b = 1, angle = pi), fill = "#B1B2B7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 8, a = 1, b = 1, angle = pi), fill = "#999A9F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 8, a = 1, b = 1, angle = pi), fill = "#7E7F84", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 8, a = 1, b = 1, angle = pi), fill = "#6A6B70", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 8, a = 1, b = 1, angle = pi), fill = "#595A5E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 8, a = 1, b = 1, angle = pi), fill = "#4E4D52", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 8, a = 1, b = 1, angle = pi), fill = "#474749", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 10, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 10, a = 1, b = 1, angle = pi), fill = "#D3D1D6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 10, a = 1, b = 1, angle = pi), fill = "#DCDADD", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 10, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 10, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 10, a = 1, b = 1, angle = pi), fill = "#BEC2C5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 10, a = 1, b = 1, angle = pi), fill = "#B1B2B7", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 10, a = 1, b = 1, angle = pi), fill = "#999A9F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 10, a = 1, b = 1, angle = pi), fill = "#7F8085", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 10, a = 1, b = 1, angle = pi), fill = "#6A6B70", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 10, a = 1, b = 1, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 10, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 12, a = 1, b = 1, angle = pi), fill = "#5D5E63", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 12, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 12, a = 1, b = 1, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 12, a = 1, b = 1, angle = pi), fill = "#DBD9DC", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 12, a = 1, b = 1, angle = pi), fill = "#D7D5D8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 12, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 12, a = 1, b = 1, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 12, a = 1, b = 1, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 12, a = 1, b = 1, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 12, a = 1, b = 1, angle = pi), fill = "#7E7F84", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 12, a = 1, b = 1, angle = pi), fill = "#6A6B70", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 12, a = 1, b = 1, angle = pi), fill = "#5B5C60", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 12, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 14, a = 1, b = 1, angle = pi), fill = "#5D5E63", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 14, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 14, a = 1, b = 1, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 14, a = 1, b = 1, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 14, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 14, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 14, a = 1, b = 1, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 14, a = 1, b = 1, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 14, a = 1, b = 1, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 14, a = 1, b = 1, angle = pi), fill = "#7E7F84", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 14, a = 1, b = 1, angle = pi), fill = "#6A6B70", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 14, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 16, a = 1, b = 1, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 16, a = 1, b = 1, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 16, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 16, a = 1, b = 1, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 16, a = 1, b = 1, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 16, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 16, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 16, a = 1, b = 1, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 16, a = 1, b = 1, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 16, a = 1, b = 1, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 16, a = 1, b = 1, angle = pi), fill = "#7E7F84", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 16, a = 1, b = 1, angle = pi), fill = "#6A6B70", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 16, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 18, a = 1, b = 1, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 18, a = 1, b = 1, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 18, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 18, a = 1, b = 1, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 18, a = 1, b = 1, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 18, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 18, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 18, a = 1, b = 1, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 18, a = 1, b = 1, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 18, a = 1, b = 1, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 18, a = 1, b = 1, angle = pi), fill = "#7E7F84", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 18, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 20, a = 1, b = 1, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 20, a = 1, b = 1, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 20, a = 1, b = 1, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 20, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 20, a = 1, b = 1, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 20, a = 1, b = 1, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 20, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 20, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 20, a = 1, b = 1, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 20, a = 1, b = 1, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 20, a = 1, b = 1, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 20, a = 1, b = 1, angle = pi), fill = "#7E7F84", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 20, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 22, a = 1, b = 1, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 22, a = 1, b = 1, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 22, a = 1, b = 1, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 22, a = 1, b = 1, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 22, a = 1, b = 1, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 22, a = 1, b = 1, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 22, a = 1, b = 1, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 22, a = 1, b = 1, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 22, a = 1, b = 1, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 22, a = 1, b = 1, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 22, a = 1, b = 1, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 22, a = 1, b = 1, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 23.8, a = 1, b = 0.9, angle = pi), fill = "#504F54", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 25.6, a = 1, b = 0.8, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 27, a = 1, b = 0.7, angle = pi), fill = "#9A9BA0", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 28.2, a = 1, b = 0.6, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 29.4, a = 1, b = 0.5, angle = pi), fill = "#B2B3B8", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 30.6, a = 1, b = 0.4, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +
  
  geom_ellipse(aes(x0 = 0,  y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 31.4, a = 1, b = 0.3, angle = pi), fill = "#C2C1C6", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 32, a = 1, b = 0.2, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +

  
  geom_ellipse(aes(x0 = 0,  y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 32.4, a = 1, b = 0.2, angle = pi), fill = "#D0CED3", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 32.6, a = 1, b = 0.2, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#DAD8DB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 33, a = 1, b = 0.2, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 33.2, a = 1, b = 0.2, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#B1B4B9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 33.8, a = 1, b = 0.3, angle = pi), fill = "#D8D6D9", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#B1B4B9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 34.4, a = 1, b = 0.4, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#B1B4B9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 35.2, a = 1, b = 0.5, angle = pi), fill = "#D2D0D5", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#B1B4B9", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 36.2, a = 1, b = 0.6, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#D3D1D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 37.4, a = 1, b = 0.7, angle = pi), fill = "#B5B6BB", color = "#F1ECE6") +
  
  geom_ellipse(aes(x0 = 2,  y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#D3D1D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 38.8, a = 1, b = 0.8, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#D9D8D6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#D3D1D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 40.6, a = 1, b = 0.9, angle = pi), fill = "#5B5C61", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 2,  y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#D9D8D6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 6,  y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#D3D1D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 10, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 14, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 18, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 22, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 26, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 30, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 34, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 38, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 42, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 46, y0 = 42.6, a = 1, b = 1, angle = pi), fill = "#474A4F", color = "#F1ECE6") +

  geom_ellipse(aes(x0 = 0,  y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#E3DFDC", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 4,  y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#D9D8D6", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 8,  y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#D3D1D2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 12, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#C2C2C4", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 16, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#9D9CA2", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 20, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#74757A", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 24, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#5A5B5F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 28, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#4F4E53", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 32, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#4B464D", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 36, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#414143", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 40, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 44, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#4A494E", color = "#F1ECE6") +
  geom_ellipse(aes(x0 = 48, y0 = 44.6, a = 1, b = 1, angle = pi), fill = "#474A4F", color = "#F1ECE6") +
  
  theme_void() +
  theme(
    plot.background = element_rect(fill = "#F1ECE9", color = "#F1ECE9"),
    plot.margin = margin(c(0,0,0,0), unit="cm")
  ) +
  coord_fixed()