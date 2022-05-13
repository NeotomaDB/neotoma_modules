# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Pipe the gapminder data
gapminder_pipe <- gapminder %>%
# select only the columns of interest
  select(country, year, lifeExp, pop)

# Observe the characteristics of the new dataframe
glimpse(gapminder_pipe)