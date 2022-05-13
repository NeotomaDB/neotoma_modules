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

# Get Datasets associated to cz
cz_ds <- get_datasets(loc = cz_sf)

# Take a look at what datasets are here
print("Cz datasets")
datasets(cz_ds)

# Now filter and keep only pollen datasets
cz_po_ds <- filter(cz_ds, datasettype == "pollen")

# See yourself that you only have pollen datasets now
print("Cz pollen datasets")
datasets(cz_po_ds)
