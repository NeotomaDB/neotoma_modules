library(leaflet)

map1 <- leaflet() %>%
              addProviderTiles(providers$Stamen.TerrainBackground) %>%
              addTiles() %>%
              addCircleMarkers(lng =-123.241999032 , lat = 49.267665596,
              popup = paste0("UBC"),
              clusterOptions = markerClusterOptions(),
              options = markerOptions(riseOnHover = TRUE))
map1