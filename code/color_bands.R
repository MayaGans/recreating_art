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
# Plate 1
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


p1 <- ggplot() +
  rev(bottom) + left + right + outline + square +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()

# ------------------------
# Plate 2
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

p2 <- ggplot() +
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
# Plate 3
# ------------------------

top_right <- purrr::map2(seq(10,150, length.out = 30), 
                          c(sample_no_repeats(names(colors), 29), "black"),
                         ~geom_point(data = data.frame(x = 1, y = 0), 
                                     aes(x,y, color = ifelse(colors[.y] %in% colors, colors[.y], "black")), 
                                     size = .x))

top_left <- purrr::map2(seq(10,150, length.out = 30), 
                        c(sample_no_repeats(names(colors), 29), "black"),
                         ~geom_point(data = data.frame(x = 0, y = 0), 
                                     aes(x,y, color = ifelse(colors[.y] %in% colors, colors[.y], "black")), 
                                     size = .x))

bottom <- purrr::map2(seq(10,175, length.out = 30), 
                           sample_no_repeats(names(colors), 30),
                           ~geom_point(data = data.frame(x = 0.5, y = -1), 
                                       aes(x,y, color = colors[.y]), 
                                       size = .x))


p3 <- ggplot() +
  rev(bottom) +
  rev(top_left) +
  rev(top_right) +
  square +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()

# ------------------------
# Plate 4
# ------------------------

right <- purrr::map2(seq(10,200, length.out = 40), 
                         sample_no_repeats(names(colors), 40),
                         ~geom_point(data = data.frame(x = 0.5, y = -0.5), 
                                     aes(x,y, color = colors[.y]), 
                                     size = .x))

top_left <- purrr::pmap(
  list(
    seq(0.02, 0.5, by = 0.02),
    sample_no_repeats(names(colors), 25)
  ),
  ~geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.5, end = pi*2, r = ..1), size = 3, color = colors[[..2]])
)

bottom_left <- purrr::pmap(
  list(
    seq(0.02, 0.5, by = 0.02),
    sample_no_repeats(names(colors), 25)
  ),
  ~geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*2, r = ..1), size = 3, color = colors[[..2]])
)

p4 <- ggplot() +
  rev(right) +
  rev(top_left) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.91, end = pi*0.59, r = 0.52), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.88, end = pi*0.62, r = 0.54), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.85, end = pi*0.65, r = 0.56), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.825, end = pi*0.67, r = 0.58), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.81, end = pi*0.69, r = 0.6), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.8, end = pi*0.7, r = 0.62), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.785, end = pi*0.715, r = 0.64), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.77, end = pi*0.73, r = 0.66), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0, y0 = 0, start = pi*0.76, end = pi*0.74, r = 0.68), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  rev(bottom_left) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.91, r = 0.52), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.88, r = 0.54), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.85, r = 0.56), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.825, r = 0.58), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.81, r = 0.6), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.8, r = 0.62), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.79, r = 0.64), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.77, r = 0.66), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.5, y0 = -1, start = pi*1.5, end = pi*1.76, r = 0.68), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  square +
  geom_vline(xintercept = 0.5, size = 3) +
  geom_segment(aes(x = 0, y = -0.5, yend = -0.5, xend = 0.5), size = 3) +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void() 

# ------------------------
# Plate 5
# ------------------------

top <- purrr::pmap(
  list(
    seq(0, 1, by = 0.025),
    sample_no_repeats(names(colors), 41)
  ),
  ~geom_segment(aes(x = ..1, y = 0, yend = -0.3, xend = ..1), size = 3, color = colors[..2])
)

bottom_left <- purrr::map2(seq(10,300, length.out = 50), 
                         sample_no_repeats(names(colors), 50),
                         ~geom_point(data = data.frame(x = 0.5, y = -0.3), 
                                     aes(x,y, color = colors[.y]), 
                                     size = .x))

bottom_right <- purrr::pmap(
  list(
    seq(0.02, 1, by = 0.02),
    sample_no_repeats(names(colors), 50)
  ),
  ~geom_arc(aes(x0 = 0.49, y0 = -1, start = pi*0.01, end = pi*0.6, r = ..1), size = 3, color = colors[[..2]])
)

p5 <- ggplot() +
  # cheat and use circles
  rev(bottom_left) +
  bottom_right + 
  top + 
  # fill in the rest manually
  geom_hline(yintercept = -0.3, size = 3) +
  geom_segment(aes(x = 0.5, y = -0.3, xend = 0.5, yend = -1), size = 3) +
  square + 
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void() 


# ------------------------
# Plate 6
# ------------------------

left_segment <- purrr::pmap(
  list(
    rev(seq(-1, -0.44, by = 0.04)),
    rev(seq(-1, 0.325, by = 0.025))[1:15],
    sample_no_repeats(names(colors), 15)
  ), ~ geom_segment(aes(x = 0, y = ..1, xend = ..2, yend = -1), size = 3, color = colors[..3])
)

right_segment <- purrr::pmap(
  list(
    rev(seq(-1, -0.44, by = 0.04)),
    seq(0.675, 1, by = 0.025)[1:15],
    sample_no_repeats(names(colors), 15)
  ), ~ geom_segment(aes(x = 1, y = ..1, xend = ..2, yend = -1), size = 3, color = colors[..3])
)

p6 <- ggplot() +
  purrr::map2(rev(seq(0.1, 1, by= 0.05)), sample_no_repeats(names(colors), 19),
              ~geom_regon(aes(x0 = 0.5, y0 = -0.3, sides = 3, angle = pi, r = .x), fill = colors[.y])) +
  left_segment +
  right_segment +
  square +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()
  

# ------------------------
# Plate 7
# ------------------------

left <- purrr::map2(seq(-2,-0.04, length.out = 70), 
                    sample_no_repeats(names(colors), 70),
                    ~geom_abline(intercept = .x, slope = 1, size = 3, color = colors[.y]))

top_right <- purrr::map2(seq(10,140, length.out = 30), 
                         sample_no_repeats(names(colors), 30),
                         ~geom_point(data = data.frame(x = 1, y = 0), 
                                     aes(x,y, color = colors[.y]), 
                                     size = .x))

bottom_right <- purrr::map2(seq(10,160, length.out = 25), 
                         sample_no_repeats(names(colors), 25),
                         ~geom_point(data = data.frame(x = 0.66, y = -1), 
                                     aes(x,y, color = colors[.y]), 
                                     size = .x))
middle <- purrr::pmap(
  list(
    seq(0.33, 0.66, by = 0.025),
    sample_no_repeats(names(colors), 14)
  ),
  ~geom_segment(aes(x = ..1, y = 0, yend = -1, xend = ..1), size = 3, color = colors[..2])
)

bottom_right <- purrr::pmap(
  list(
    seq(0.02, 0.5, by = 0.02),
    sample_no_repeats(names(colors), 25)
  ),
  ~geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.01, end = pi*0.6, r = ..1), size = 3, color = colors[[..2]])
)

p7 <- ggplot() +
  left + 
  # cheat and use circles
  rev(top_right) +
  # arcs
  bottom_right +
  # fill in the rest manually
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.01, end = pi*0.6, r = 0.5), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.1, end = pi*0.6, r = 0.52), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.12, end = pi*0.6, r = 0.54), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.145, end = pi*0.6, r = 0.56), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.166, end = pi*0.6, r = 0.58), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.185, end = pi*0.6, r = 0.6), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  geom_arc(aes(x0 = 0.59, y0 = -1, start = pi*0.2, end = pi*0.6, r = 0.62), size = 3, color = colors[[sample_no_repeats(names(colors), 1)]]) +
  middle +
  square +
  geom_vline(xintercept = 0.33, size = 3) +
  geom_segment(aes(x = 0.66, y = -0.5, yend = -0.5, xend = 1), size = 3) +
  geom_vline(xintercept = 0.66, size = 3) +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void() 

# ------------------------
# Plate 8
# ------------------------

bottom_right <- purrr::map2(seq(10,200, length.out = 30), 
                           sample_no_repeats(names(colors), 30),
                           ~geom_point(data = data.frame(x = 0.3, y = -1), 
                                       aes(x,y, color = colors[.y]), 
                                       size = .x))

top_right <- purrr::pmap(
  list(
    seq(0.3, 1, by = 0.02),
    sample_no_repeats(names(colors), 36)
  ),
  ~geom_segment(aes(x = ..1, y = 0, yend = -0.75, xend = ..1), size = 3, color = colors[..2])
)

left <- purrr::pmap(
  list(
    seq(-1, -0.02, by = 0.02),
    sample_no_repeats(names(colors), 50)
  ),
  ~geom_segment(aes(x = 0, y = ..1, yend = ..1, xend = 0.3), size = 3, color = colors[..2])
)

p8 <- ggplot() +
  rev(bottom_right) + 
  top_right +
  left +
  square + 
  geom_vline(xintercept = 0.3, size = 3) +
  geom_segment(aes(x = 0.3, y = -0.75, yend = -0.75, xend = 1), size = 3) +
  coord_fixed(clip = "on", ylim=c(-1,0), xlim=c(0,1), expand = FALSE) +
  theme_void()


all <- (p1 | p2 | p3 | p4) / (p5 | p6 | p7 | p8) &
  theme(plot.margin = margin(20,20,20,20))

ggsave("color_bands.png", all, width = 14, height = 7)
