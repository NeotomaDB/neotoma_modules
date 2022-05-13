# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Creating a gdp column
gapminder_gdp <- gapminder %>%
  mutate(gdp_total = gdpPercap * pop)

# Show the first rows with the added column
head(gapminder_gdp)