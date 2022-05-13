# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Filter rows where country is USA
gapminder_usa <- gapminder %>%
  filter(country == "United States")

head(gapminder_usa)