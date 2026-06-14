library(tidyverse)

# tofu fried with sauce

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(color = "white", bins = 100) +
  scale_y_continuous(labels = scales::comma_format()) +
  labs(x = "Carat", y = "Number", title = "Histogram of Carat (Weight) among 50,000 diamonds", subtitle = "Carats just above meaningful numbers are very common", caption = "diamonds dataset from ggplot2")

ggsave(plot=hist_p, file="diamonds.png")



