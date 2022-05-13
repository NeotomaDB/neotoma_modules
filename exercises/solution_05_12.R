# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Grouping by country and obtaining statistics.
gapminder %>%
    filter(continent == "Americas", year >= 2000) %>%
    mutate(totalGDP = gdpPercap * pop) %>%
    group_by(country) %>%
    summarise(totalGDP_mean = mean(totalGDP),
              totalGDP_sd = sd(totalGDP))