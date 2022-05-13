# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Reorder the following code
result <- gapminder %>%
    select(continent, gdpPercap, lifeExp, year)

glimpse(result)