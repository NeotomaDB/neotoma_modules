# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Plotting gdpPercap vs lifeExp
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()