

# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Selecting our rows
gapminder_select <- select(gapminder, country, year, lifeExp, pop)

# Exploring the new dataframe
glimpse(gapminder_select)