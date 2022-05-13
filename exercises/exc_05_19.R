# Loading libraries
suppressMessages(library(tidyverse))
library(gapminder)

gapminder_cleaned <- gapminder %>%
filter(year == "2007") %>%
mutate(
  pop2 = pop + 1,
  continent = case_when(
    continent == "Oceania" ~ "Asia",
    TRUE ~ as.character(continent)
  ) %>% as.factor %>%
    fct_relevel("Asia", "Americas", "Europe", "Africa")
)

head(gapminder_cleaned)