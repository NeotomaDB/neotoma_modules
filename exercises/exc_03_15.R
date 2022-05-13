# Load libraries
suppressMessages(library(neotoma2))

# Get pollen Datasets
po_ds <- get_datasets(datasettype = "pollen")

# get the coordinates
coordinates_po <- coordinates(po_ds)

# Show the coordinates
coordinates_po