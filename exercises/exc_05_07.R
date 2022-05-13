# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Use filter() to obtain observations from USA
# and where life expectancy greater than 75
gapminder_usa_LE <- gapminder %>%
  filter(country == "United States", lifeExp > 750)

head(gapminder_usa_LE)