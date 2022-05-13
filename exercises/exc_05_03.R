# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Selecting our rows
gapminder_select <- select(gapminder, country, year, lifeExp, pop)

# Printing the first few rows
head(gapminder_select)