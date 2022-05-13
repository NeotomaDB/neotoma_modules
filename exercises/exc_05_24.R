# Loading libraries
suppressMessages(library(tidyverse))
library(leaflet)
options(warn=-1)

# Creating the data
data(quakes)

# Show quakes
glimpse(quakes)

# Show first 20 rows from the `quakes` dataset
leaflet(data = quakes[1:20,]) %>% addTiles() %>%
  addMarkers(~long, ~lat, popup = ~as.character(mag), label = ~as.character(mag))