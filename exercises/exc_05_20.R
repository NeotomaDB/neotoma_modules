# Loading libraries
suppressMessages(library(tidyverse))
library(gapminder)

gapminder %>% 
filter(year == "2007") %>% 
mutate(
  pop2 = pop + 1,
  continent = case_when(
    continent == "Oceania" ~ "Asia",
    TRUE ~ as.character(continent)
  ) %>% as.factor %>% 
    fct_relevel("Asia", "Americas", "Europe", "Africa")
) %>% 
ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(size = pop, color = continent)) +
  geom_point(aes(size = pop2), color = "black", shape = 21) +
  scale_x_log10(breaks = c(500, 1000, 2000, 4000,
                           8000, 16000, 32000, 64000)) +
  scale_y_continuous(breaks = seq(0, 90, by = 10)) +
  scale_color_manual(values = c("#f12248", "#5ca509",
                                "#534d03", "#0522c5")) 