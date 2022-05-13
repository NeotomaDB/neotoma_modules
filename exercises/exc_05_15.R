# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

ggplot(gapminder, aes(gdpPercap, lifeExp, colour = continent)) +
  geom_point()