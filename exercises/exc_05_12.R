# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Grouping by country and obtaining statistics.
gapminder %>%
    filter(_________, _________) ____
    _________(totalGDP = _________) ____
    _________(country) %>%
    _________(totalGDP_mean = _________, 
              totalGDP_sd = _________)