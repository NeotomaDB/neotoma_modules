# Loading libraries
library(gapminder)
suppressMessages(library(tidyverse))

# Reorder the following code

glimpse(result)
result <-
select(continent, gdpPercap, lifeExp, year)
%>%
gapminder