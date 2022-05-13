# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Filtering countries
gapminder_small <- gapminder %>%
  filter(country %in% c("Canada", "United States", "France", "Australia"))

# Facet plot
ggplot(gapminder_small, aes(year, lifeExp, colour = continent)) +
  geom_line() +
  facet_wrap(~country)