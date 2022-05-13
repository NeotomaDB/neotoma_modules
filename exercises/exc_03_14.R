# Load libraries
suppressMessages(library(neotoma2))

cz <-'{"type": "Polygon",
        "coordinates": [[
            [12.40, 50.14],
            [14.10, 48.64],
            [16.95, 48.66],
            [18.91, 49.61],
            [15.24, 50.99],
            [12.40, 50.14]]]}'

cz_sf <- geojsonsf::geojson_sf(cz)

# Get pollen Datasets associated to Cz
cz_ds <- get_datasets(loc = cz_sf, datasettype = "pollen")

# get the IDs
cz_ds_s <- summary(cz_ds)
# Show IDs
print("Summary of Cz Pollen Sites")
cz_ds_s