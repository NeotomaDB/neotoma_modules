# Loading the libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Organizing data to plot
gapminder_data <- gapminder %>%
    group_by(_______, ________) %>%
    _________(lifeExp = mean(_______))

ggplot(_________, ______(x = _____, y = lifeExp, colour = _______)) +
 _________