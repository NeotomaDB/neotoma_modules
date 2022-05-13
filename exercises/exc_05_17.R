# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Plotting and fitting a linear model
ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point() +
  scale_x_log10() +
  geom_smooth(method = "lm")