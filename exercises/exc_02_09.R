# Load libraries
suppressMessages(library(neotoma2))

# Location Polygon 
cz <-'{"type": "Polygon",
        "coordinates": [[
            [12.40, 50.14],
            [14.10, 48.64],
            [16.95, 48.66],
            [18.91, 49.61],
            [15.24, 50.99],
            [12.40, 50.14]]]}'

# Convert to geojsonsf
cz_sf <- geojsonsf::geojson_sf(cz)

# Choose a datasettype and pass the location
cz_ds <- get_datasets(datasettype = "pollen", loc = cz)

# We will discuss the samples() function in the next module
cz_dl <- cz_ds %>% get_downloads() %>% samples()
cz_dl