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

sample_no_repeats <- function(x, size) {
  l <- length(x)
  if (l==1) stop("repeats are inevitable with only one selection")
  ## if size is one, just do a straightforwards sample
  if (size==1) return(sample(x, 1))
  ## if size > 1, start with a sample of 1...
  initial_value <- sample(l, 1)
  ## ...then use samples of l-1 to accumulate and modulo to keep them in x range
  ## Since we never add 0 or l to the accumulation, we can never have a repeat
  x[
    cumsum(c(initial_value,
             sample(l-1, size-1, replace = TRUE)
    )) %% l + 1
    ]
}


# black square outline used for each of the 8 pieces
square <- geom_rect(data = data.frame(xmin = 0, ymin = 0, xmax = 1, ymax = -1), 
                    aes(xmin = xmin,
                        xmax = xmax,
                        ymin = ymin,
                        ymax = ymax),
                    color = "black", size = 3, alpha = 0) 


# ------------------------
# Plot 1
# ------------------------

left <- purrr::map2(seq(-0.99,-0.04, length.out = 32), 
                    sample_no_repeats(names(colors), 32),
                    ~geom_abline(intercept = .x, slope = 1, size = 3, color = colors[.y]))

right <- data.frame(
  x_start = seq(from = 0.5, to = 1, length.out = 22),
  y_start = 0,
  x_end = seq(from = 0.5, to = 1, length.out = 22),
  y_end = seq(from = -0.5, to = -1, length.out = 22),
  color = sample_no_repeats(names(colors), 22)
) %>%
  purrr::pmap(., 
              ~geom_segment(
                aes(x = ..1, y = ..2, xend = ..3, yend = ..4, color = colors[..5]), 
                size = 3))


bottom <- purrr::map2(seq(10,500, length.out = 90), 
                      sample_no_repeats(names(colors), 90),
                      ~geom_point(data = data.frame(x = 0.5, y = -0.5), 
                                  aes(x,y, color = colors[.y]), 
                                  size = .x))
outline <- data.frame(
  x_start = c(0.5,0.5,0.5),
  y_start = c(0,-0.5,-0.5),
  x_end = c(0.5,1,0),
  y_end = c(-0.5,-1,-1)
) %>%
  purrr::pmap(., ~geom_segment(aes(x = ..1, y = ..2, xend = ..3, yend = ..4), size = 3))


ggplot() +
  rev(bottom) + left + right + outline + square +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()

# ------------------------
# Plot 2
# ------------------------

top_right <- purrr::map2(seq(10,160, length.out = 30), 
                         sample_no_repeats(names(colors), 30),
                         ~geom_point(data = data.frame(x = 1, y = 0), 
                                     aes(x,y, color = colors[.y]), 
                                     size = .x))

bottom_left <- purrr::map2(seq(10,175, length.out = 30), 
                           sample_no_repeats(names(colors), 30),
                           ~geom_point(data = data.frame(x = 0.5, y = -1), 
                                       aes(x,y, color = colors[.y]), 
                                       size = .x))

bottom_right <- data.frame(
  x_start = 0.5,
  y_start = seq(from = -0.5, to = -1, length.out = 22),
  x_end = 1,
  y_end = seq(from = -0.5, to = -1, length.out = 22),
  color = sample_no_repeats(names(colors), 22)
) %>%
  purrr::pmap(., 
              ~geom_segment(
                aes(x = ..1, y = ..2, xend = ..3, yend = ..4, color = colors[..5]), 
                size = 3))

diagonal <- function(a, color) {
  geom_segment(aes(x = 0.5, y = -(a), xend = a, yend = -0.5), size = 3, color = colors[color])
}

ggplot() +
  rev(bottom_left) +
  rev(top_right) +
  bottom_right +
  purrr::map2(seq(-0.5, 0.5, by = 0.03), sample_no_repeats(names(colors), 34), ~diagonal(.x, .y)) +
  square +
  geom_hline(yintercept = -0.5, size = 3) +
  geom_vline(xintercept = 0.5, size = 3) +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()

# ------------------------
# Plot 3
# ------------------------

top_right <- purrr::map2(seq(10,200, length.out = 40), 
                          c(sample_no_repeats(names(colors), 39), "black"),
                         ~geom_point(data = data.frame(x = 1, y = 0), 
                                     aes(x,y, color = ifelse(colors[.y] %in% colors, colors[.y], "black")), 
                                     size = .x))

top_left <- purrr::map2(seq(10,200, length.out = 40), 
                        c(sample_no_repeats(names(colors), 39), "black"),
                         ~geom_point(data = data.frame(x = 0, y = 0), 
                                     aes(x,y, color = ifelse(colors[.y] %in% colors, colors[.y], "black")), 
                                     size = .x))

bottom <- purrr::map2(seq(10,175, length.out = 30), 
                           sample_no_repeats(names(colors), 30),
                           ~geom_point(data = data.frame(x = 0.5, y = -1), 
                                       aes(x,y, color = colors[.y]), 
                                       size = .x))


ggplot() +
  rev(bottom) +
  rev(top_left) +
  rev(top_right) +
  square +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()

# ------------------------
# Plot 4
# ------------------------

# ------------------------
# Plot 5
# ------------------------

# ------------------------
# Plot 6
# ------------------------

# ------------------------
# Plot 7
# ------------------------

# ------------------------
# Plot 8
# ------------------------
