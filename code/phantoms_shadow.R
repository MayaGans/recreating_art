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

point_top_right <- function(id, value, x, y) {
  data.frame(
    id = id,
    value = value,
    x = c(0+x,0.5+x,1+x,1+x),
    y = c(0+y,0.75+y,1+y,0+y)
  )
}

point_top_left <- function(id, value, x, y) {
  data.frame(
    id = id,
    value = value,
    x = c(0+x,0.5+x,1+x,0+x),
    y = c(1+y,0.75+y,0+y,0+y)
  )
}

point_bottom_right <- function(id, value, x, y) {
  data.frame(
    id = id,
    value = value,
    x = c(0+x,0.5+x,1+x,1+x),
    y = c(1+y,0.25+y,0+y,1+y)
  )
}


point_bottom_left <- function(id, value, x, y) {
  data.frame(
    id = id,
    value = value,
    x = c(0+x,0+x,0.5+x,1+x),
    y = c(1+y,0+y,0.25+y,1+y)
  )
}

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
