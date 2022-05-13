# Loading the libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Organizing data to plot
gapminder_data <- gapminder %>%
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp))

ggplot(gapminder_data, aes(x = year, y = lifeExp, colour = continent)) +
 geom_line()