# Anni Albers
# Design for a Jacquard Weaving 
# 1926
# https://harvardartmuseums.org/collections/object/226105

colors <- list(
  nude = "#DBCFB9",
  black = "#27221C",
  lightblue = "#c1bcb5",
  beige = "#D4B187",
  red = "#B83C30",
  white = "#F1EEE9"
)

data <- data.frame(
  color = c(
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","lightblue","black", "black",  "beige", "beige", "beige", "beige"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","black","lightblue","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","lightblue","black", "black",  "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","black","lightblue","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","lightblue","black", "black",  "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","black","lightblue","black", "black",  "beige", "beige", "beige", "beige"),
    c("nude", "red", "nude", "red", "nude", "red", "black", "black", "black","black","black","black","black", "black","black","beige","black", "black", "red", "black",  "red", "beige", "red", "beige"),
    c("beige", "beige", "beige", "beige", "beige", "beige", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","beige", "beige",  "beige", "beige", "beige", "beige"),
    c("nude", "red", "nude", "red", "nude", "red", "black", "black", "black","black","black","black","black", "black","black","beige","black","black", "red", "black",  "red", "beige", "red", "beige"),
    c("beige", "beige", "beige", "beige", "beige", "beige", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","beige", "beige",  "beige", "beige", "beige", "beige"),
    c("nude", "red", "nude", "red", "nude", "red", "black", "black", "black","black","black","black","black", "black","black","beige","black", "black", "red", "black",  "red", "beige", "red", "beige"),
    c("beige", "beige", "beige", "beige", "beige", "beige", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","beige", "beige",  "beige", "beige", "beige", "beige"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","red","red","red", "red","nude","nude","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "beige", "lightblue","lightblue","nude","nude","nude", "nude", "nude","nude","beige", "black", "black",  "black", "beige", "beige", "beige", "beige"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","red","red","red", "red","nude","nude","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "beige", "lightblue","lightblue","nude","nude","nude", "nude", "nude","nude","beige", "black", "black",  "black", "beige", "beige", "beige", "beige"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","red","red","red", "red","nude","nude","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "beige", "lightblue","lightblue","nude","nude","nude", "nude", "nude","nude","beige", "black", "black",  "black", "beige", "beige", "beige", "beige"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "beige","beige","beige","beige","beige", "beige","beige","beige","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "beige", "beige","beige","beige","beige","beige", "beige", "beige","beige","beige", "black", "black",  "black", "beige", "beige", "beige", "beige"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","black","black","black", "black","nude","nude","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "beige", "lightblue","lightblue","black","black","black", "black","nude","nude","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "beige","beige","beige","beige","beige", "beige","beige","beige","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "beige", "beige","beige","beige","beige","beige", "beige", "beige","beige","beige", "black", "black",  "black", "beige", "beige", "beige", "beige"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","black","black","black", "black","nude","nude","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "red", "nude", "lightblue","lightblue","black","black","black", "black","nude","nude","nude","red", "nude", "nude", "nude", "nude", "nude", "nude"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue","white","white","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "red", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue","white","white","nude","red", "nude", "nude", "nude", "nude", "nude", "nude"),
    c("lightblue", "black", "lightblue", "black", "lightblue", "black", "lightblue", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue","white","white","nude","black", "black", "lightblue", "beige", "lightblue", "beige", "lightblue"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "red", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue","white","white","nude","red", "nude", "nude", "nude", "nude", "nude", "nude"),
    c("beige", "black", "beige", "black", "beige", "black", "lightblue", "nude", "white","white","white","white","white", "white", "nude","nude","nude","black","black", "beige",  "beige", "beige", "beige", "beige"),
    c("beige", "black", "beige", "black", "beige", "black", "red", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "lightblue","lightblue","nude","red","black", "beige",  "beige", "beige", "beige", "beige"),
    c("beige", "black", "beige", "black", "beige", "black", "lightblue", "nude", "white","white","white","white","white", "white", "nude","nude","nude","black","black", "beige",  "beige", "beige", "beige", "beige"),
    c("beige", "black", "beige", "black", "beige", "black", "red", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "lightblue","lightblue","nude","red","black", "beige",  "beige", "beige", "beige", "beige"),
    c("beige", "black", "beige", "black", "beige", "black", "lightblue", "nude", "white","white","white","white","white", "white", "nude","nude","nude","black","black", "beige",  "beige", "beige", "beige", "beige"),
    c("beige", "black", "beige", "black", "beige", "black", "red", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "lightblue","lightblue","nude","red","black", "beige",  "beige", "beige", "beige", "beige"),
    c("nude", "black", "nude", "black", "nude", "black", "beige", "beige", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","black","black","black", "black",  "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "beige", "beige", "red","red","red","red","red", "red", "red","red","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "black", "red","red","red","red","red", "red", "red","red","black","black","black", "black",  "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "beige", "beige", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "nude", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","black","black","black", "black", "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "beige", "beige", "red","red","red","red","red", "red", "red","red","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "black", "red","red","red","red","red", "red", "red","red","black","black","black", "black",  "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "beige", "beige", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "nude", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","black","black","black", "black", "black", "black", "black", "black"),
    c("nude", "black", "nude", "black", "nude", "black", "beige", "beige", "red","red","red","red","red", "red", "red","red","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "black", "red","red","red","red","red", "red", "red","red","black","black","black", "black",  "black", "black", "black", "black"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "lightblue","lightblue","nude","nude","nude", "nude",  "nude", "nude", "nude", "nude"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "white","white","nude","black","black", "black",  "beige", "black", "beige", "black"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "lightblue","lightblue","nude","nude","nude", "nude",  "nude", "nude", "nude", "nude"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "nude", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "white","white","nude","black","black", "black",  "beige", "black", "beige", "black"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("black", "black", "black", "black", "black", "black", "lightblue", "nude", "black","black","black","black","black", "black", "black","black","nude","black","black", "black",  "beige", "black", "beige", "black"),
    c("nude", "red", "nude", "red", "nude", "red", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude", "nude", "beige","red","black", "red",  "beige", "red", "beige"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "black", "lightblue", "black","black","black","black","black", "black", "black","black","beige","black","nude", "black",  "nude", "beige", "nude", "beige"),
    c("nude", "red", "nude", "red", "nude", "red", "nude", "nude", "beige","beige","beige","beige","beige", "beige", "nude","nude", "nude", "beige","red","black", "red",  "beige", "red", "beige"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "black", "lightblue", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "black",  "nude", "beige", "nude", "beige"),
    c("nude", "red", "nude", "red", "nude", "red", "nude", "nude", "beige","beige","beige","beige","beige", "beige", "nude","nude", "nude", "beige","red","black", "red",  "beige", "red", "beige"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "black", "lightblue", "nude","nude","nude","nude","nude", "nude", "nude","nude","beige","black","nude", "black",  "nude", "beige", "nude", "beige"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude","nude","nude","nude","nude", "nude", "nude", "nude", "nude", "nude"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","black", "black",  "beige", "beige", "beige", "beige"),
    c("nude", "black", "nude", "black", "nude", "black", "lightblue", "black", "lightblue","lightblue","lightblue","lightblue","lightblue", "lightblue", "nude","nude","beige","beige","black", "black",  "beige", "beige", "beige", "beige")
  ),
  x = rep(1:24, 76),
  y = purrr::map(rev(seq_len(76)), ~rep(.x, 24)) %>% unlist()
)

ggplot(data, aes(x, y)) +
  geom_tile(fill = colors[data$color]) +
  theme_void() +
  guides(fill = FALSE) +
  theme(
    plot.background = element_rect(color = colors[["nude"]], fill = colors[["nude"]]),
    plot.margin = margin(c(60,80,30,80))
  )
  
  
  
  
  