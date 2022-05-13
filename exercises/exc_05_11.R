# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Grouping by country and obtaining statistics.
gapminder %>%
group_by(country) %>%
summarise(LifeExp_max = max(lifeExp),
          LifeExp_min = min(lifeExp),
          LifeExp_avg = mean(lifeExp))