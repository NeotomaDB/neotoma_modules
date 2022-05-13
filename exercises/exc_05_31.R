library(neotoma)
library(leaflet)
options(warn=-1)

all_wi <- neotoma::get_dataset(gpid = "Wisconsin")

# We're going to use this multiple times I think, so let's make it a function:


dataset_summary <- do.call(rbind, lapply(all_wi, 
                    function(x){
                        # here we pull out the site information from the `dataset` objects:
                        data.frame(name = x$site.data$site.name,
                                    lat  = x$site.data$lat + runif(1, -0.005, 0.005),
                                    long = x$site.data$long + runif(1, -0.005, 0.005),
                                    type = x$dataset.meta$dataset.type)
                    }))

# The leaflet package documentation uses piping.  For the sake of this tutorial, I won't.
# First, define a color palette for the dataset type symbol plotting.
pal <- colorFactor("Dark2", domain = levels(dataset_summary$type))

# Now make the leaflet map, add base raster tiles and then add the markers for the records:
map <- leaflet(data = dataset_summary)
map <- leaflet::addTiles(map)
map <- leaflet::addCircleMarkers(map, ~long, ~lat, 
                                popup = ~paste0("Site: ", as.character(name), "<br>",
                                                "Type: ", 
                                                as.character(dataset_summary$type)),
                                color = ~pal(type),
                                stroke = FALSE, fillOpacity = 0.5)
# You need to explicitly call the `map` object to make it appear!
map
