# https://www.artsy.net/artwork/odili-donald-odita-phantoms-shadow

# Odili Donald Odita
# Phantoms Shadow

colors <- list(
  teal = "#258B97",
  peach = "#DA8873",
  yellow = "#ECA81F",
  blue = "#024E98"
)

# ---------------------------
# Four Shapes
# ---------------------------

point_factory <- function(a,b,c,d,e,f,g,h) {
  function(id, value, x, y) {
    data.frame(
      id = id,
      value = value,
      x = c(a+x,b+x,c+x,d+x),
      y = c(e+y,f+y,g+y,h+y)
    )
  }
}

point_top_right <- point_factory(0,0.5,1,1,0,0.75,1,0)
point_top_left <- point_factory(0,0.5,1,0,1,0.75,0,0)
point_bottom_right <- point_factory(0,0.5,1,1,1,0.25,0,1)
point_bottom_left <- point_factory(0,0,0.5,1,1,0,0.25,1)

# -----------------------------
# Generative Art
# -----------------------------

all_x = rep(seq(0,7), 8)
all_y = rep(0:7, each = 8)
ids = 1:length(all_x)

points <- c(point_top_left,
  point_bottom_left,
  point_top_right,
  point_bottom_right)

meta_df <- tibble(
  funcs = rep(sample(points, 8*8, replace = TRUE)),
  id = ids,
  sample(unlist(colors), 8*8, replace = TRUE),
  all_x = all_x,
  all_y = all_y,
)

positions <- purrr::pmap(meta_df, ~rlang::exec(..1,..2,..3,..4,..5)) %>%
  purrr::reduce(dplyr::bind_rows)

ggplot(positions, aes(x = x, y = y)) +
  geom_polygon(aes(group = id), fill=positions$value) +
  theme_void() +
  guides(fill = FALSE) +
  theme(plot.background = element_rect(color = "#9BA292", fill = "#9BA292"))
