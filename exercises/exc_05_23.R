# Loading libraries
suppressMessages(library(tidyverse))
library(gapminder)
library(countrycode)
library(ggthemes)
options(warn=-1)

# Creating the data
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

# Plotting the data
ggplot(data = world) + 
  geom_map(map = world,
           aes(x=long, y=lat, group = group, map_id = region,
               fill = continent)) +
  theme_map() +
  scale_fill_manual(values = c("#F15772", "#7EEB03",
                               "#FBE700", "#54D5E9", "#d286e6")) +
  guides(fill = FALSE) +
  theme(
    plot.background = element_rect(color = "#B8C2CC", fill = NA)
  )