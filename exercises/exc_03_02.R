# Load libraries
suppressMessages(library(neotoma2))
options(warn=-1)

# Get Sites
cz_sites <- get_sites(c(1399, 3090, 3152, 3168))

# Get Datasets detail
cz_datasets <- get_datasets(cz_sites)

# Apply collunits
cz_datasets %>% collunits()