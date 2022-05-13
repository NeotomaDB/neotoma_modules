# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Select your data
gapminder_asia <- gapminder %>%
  filter(continent == "Asia", year >= 1975)

head(gapminder_asia)