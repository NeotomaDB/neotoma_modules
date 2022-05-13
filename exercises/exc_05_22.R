# Loading libraries
suppressMessages(library(tidyverse))
library(gapminder)
library(countrycode)
options(warn=-1)

world <- map_data("world") %>%
  filter(region != "Antarctica") %>% 
  mutate(
    continent = countrycode(sourcevar = region,
                            origin = "country.name",
                            destination = "continent"
    ) %>% as.factor %>% 
      fct_relevel("Asia", "Americas", "Europe", "Africa", "Oceania")
  ) %>% 
  drop_na(continent)

glimpse(world, width = 50)