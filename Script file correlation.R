install.packages("ggstatsplot")
library("ggstatsplot")


ggscatterstats(
  data <- read.csv("D://new//mango.csv"),
  x    =  VS,
  y    =  Cellulose,
  type = "parametric")
