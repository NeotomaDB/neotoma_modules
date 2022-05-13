# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Piping multiple functions
gapminder_multi <- gapminder %>%
    select(country, year, lifeExp, pop, gdpPercap) %>%
    filter(country == "United States", lifeExp > 75) %>%
    mutate(gdp_total = gdpPercap * pop)

head(gapminder_multi)