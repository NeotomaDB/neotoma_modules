# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

ggplot(gapminder, aes(gdpPercap, lifeExp, colour = continent)) +
  geom_point(alpha = 0.5) +
  scale_x_log10()